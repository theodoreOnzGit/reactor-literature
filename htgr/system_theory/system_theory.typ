// for Latex like fonts
#set par(leading: 0.55em, first-line-indent: 1.8em, justify: true)
#set text(font: "New Computer Modern")
#show raw: set text(font: "New Computer Modern Mono")
#show par: set block(spacing: 0.55em)
#show heading: set block(above: 1.4em, below: 1em)


// for numbered headings
#set heading(numbering: "1.1.1")

// underline link elements
#show link: underline
#show link: set text(blue)

// equation numbering
#set math.equation(numbering: "(1)")

= Introduction 

This document outlines some existing free and open source (FOSS) software 
for system level code.

For system level code, calculation times need to be short. In the case 
of Digital Twins and plant simulators, the calculations need to be 
faster than real-time. This is an additional constraint. 

= Literature Review

Existing system codes such as the many versions of RELAP @Fletcher1992
@Berry2018 and SAM @Zhou2021 are unfortunately closed source.
Nevertheless, some of their working principles may be available in literature.
We shall explore how some of them solve the thermal hydraulics equations
here. The important thermal hydraulics for HTGR are compressible flow 
within the primary loop @Zhang2006 
and multiphase flow within the secondary loop for steam generators in the 
Rankine cycle @Zhang2006 if we want to simulate that as well.
However, if we want to simulate design basis events such as water ingress
@Fang2023, then the interaction between multiphase 
flow (water) and single phase compressible flow (gas) may be quite 
important.

Previous work done here includes the Engineering Simulation System (ESS)
designed to model startup, shutdown and accident scenarios for the HTR-PM 
@Sui2014. This ESS in turn uses vPower for its thermal hydraulics 
@Sui2014. The vPower platform simulation platform was developed 
by Beijing Neowise Technology Company Ltd @Tang2017. vPower 
is responsible for the most of the secondary loop and control systems 
while Thermix/BLAST is used for core thermal hydraulics and neutronics 
@Tang2017. Thermix was developed by Julich Nuclear research 
center of Germany while BLAST was developed by ORNL @Tang2017.
Unfortunately, this is not a 100% FOSS system, which makes it difficult 
for researchers to repeat unless they already have access to the software.

Now, ANL's System Analysis Module code based on MOOSE is also another 
well known system code, but it is closed source and catered more for 
incompressible but thermally expandable flows @Hu2021. Therefore,
it has little use here. However, Modelica's open source module 
has been used for studying Small Modular HTGRs in the context of 
desalination @Tassone2021. In this study, the NuKomp 
1.2 and the ThermoPower library @Casella2009 within modelica 
were used. Both these modelica libraries have been used in modelling 
multiphase flow phenomena in the IRIS PWR @Cammi2011. The 
ThermoPower library @Casella2009 in modelica is open sourced
and licensed under the modelica library 2.0 and its code is available on 
a #link("https://github.com/casella/ThermoPower")[github repository]. This
license seems to be mostly 
an Open Sourced License that allows commercial use as long as attribution 
is given. NuKomp unfortunately does not seem to be open sourced at the 
moment. Nevertheless, it seems the ThermoPower library is a good place 
to start.

= Exploring the ThermoPower Modelica Library

The ThermoPower modelica library has several components, including using 
Finite Element Modelling (FEM) for its heat exchangers 
@Casella2003a as opposed to Finite Volume Modelling used in 
OpenFOAM @Jasak2009. Nevertheless, it is able to handle 
compressible flows, which makes it quite useful for power plant modelling.
These approach modelling pipes in heat exchangers as 1D control volume 
arrays similar to the FVM methods I used in the early iterations of the 
thermal hydraulics rs library. 

The Modelica design approach is quite object oriented, with a strong 
emphasis on code re-usability and modification @Casella2006.
This approach was validated in some power plant components such as 
throttle valves, mixers, tanks, pumps, and multiphase steam drums
@Casella2003. These components are modelled from 
the underlying partial differential equations (PDEs), and discretised 
into ODEs using FEM or FVM @Casella2003 before being solved.


== 1D Conservation Equations for Pipe flow with boussinesq type fluids

Boussinesq refers to the approximation where enthalpy changes due 
to increase or decrease in density are negligible in comparison to 
other terms. In fact, we do not consider density changes except for 
natural convection. 


The PDEs for modelica are mass, momentum and energy balances.

=== Mass Balance

For a 1D mass balance over a control volume $Delta V$:

$ (diff m)/(diff t) = dot(m)_"out" - dot(m)_"in"  $

Given a constant, negligibly expanding pipe with virtually constant 
cross section area $A$ and volume element length $Delta x$:


$ A Delta x (diff rho)/(diff t) = dot(m)_"out" - dot(m)_"in"  $
$ A  (diff rho)/(diff t) = (dot(m)_"out" - dot(m)_"in")/(Delta x)  $


Taking the limit $Delta x -> 0$:
$ A  (diff rho)/(diff t) = -(diff dot(m))/(diff x) $

We finally get the equation form used in Modelica ThermoPower 
@Casella2003:
$ A  (diff rho)/(diff t)  + (diff dot(m))/(diff x) = 0 $

=== Momentum Balance

We start momentum balance off with a simple force balance 
based on Newton's second law:

$ (d p_x)/(d t) = sum_i^n F_x + p_"x,in" - p_"x,out" $

This is to say, the change in momentum over the $x$ direction in the 
control volume, which is the direction parallel to the pipe 
flow direction, is equal to the sum of forces along the x direction 
plus momentum inflows minus momentum outflows.

For momentum flows in and out, 

$ p_"x,in" = dot(m) times "momentum per unit mass" $

The momentum per unit mass is essentially the velocity in the 
x direction as $p_x = m u_x$:

$ p_"x,in" = dot(m) times u_"x,in" $

$dot(m)$ is the mass flow rate which can be written in terms of $u_"x,in"$
as well

$ p_"x,in" = rho_"in" A_"xs,in" u_"x,in" times u_"x,in" $
$ p_"x,in" = rho_"in" A_"xs,in"  u_"x,in"^2 $

We can use the same expression for the momentum inflow and outflow

$ (d p_x)/(d t) = sum_i^n F_x + rho_"in" A_"xs,in"  u_"x,in"^2 
- rho_"out" A_"xs,out"  u_"x,out"^2 $

For incompressible flow, with constant cross sectional area, the momentum 
inflows and outflows essentially cancel out. For compressible flows however,
this may not happen.

For the forces along the control volume, we only consider the terms 
present (mostly) in the Bernoulli Equation: 

+ Friction Term
+ Hydrostatic Term
+ Pressure Term at inlets and outlets

==== Friction Term

The friction term is often described by the coefficient of friction.
The magnitude of shear stress relevant to the friction term is: 

$ tau_"wall" = 1/2 rho u_x^2 C_f $

Now, in terms of force:

$ F_"wall" = -1/2 rho u_x^2 C_f A_"wall" = -1/2 rho u_x^2 C_f Delta x P_w $

We use the negative sign to indicate that the force is opposite the 
direction of the flow.

Where $Delta x$ is the control volume length and $P_w$ is the wetted 
perimeter of the control volume.

==== Hydrostatic Term

In terms of hydrostatics, we only consider the forces at the entrance 
and exit. This correlates to "gravitational" potential energy of the 
fluid.

$ F_"hydrostatic" = (rho g z)_"in" A_"in" - (rho g z)_"out" A_"out" $

Again, if this is a pipe and $A_"in" = A_"out" = A_"xs"$, 

$ F_"hydrostatic" = A_"xs" g [ (rho z)_"in"  - (rho z)_"out" ] $

The sign convention here assumes that the inlet is at a lower x than 
the outlet, such that forces acting on the inlet push the fluid along 
the positive x direction, and forces at the outlet push the fluid in 
the negative x direction.

==== Pressure Term

Hydrostatics aside, we also consider the fluid pressure which represents 
correlates "elastic" potential energy of the fluid. 

$ F_"pressure potential" = A_"xs" [ P_"in"  - P_"out" ] $

==== Putting the terms together...

$ (d p_x)/(d t) = 
& -1/2 rho u_x^2 C_f Delta x P_w + A_"xs" g [ (rho z)_"in"  - (rho z)_"out" ] \
& + A_"xs" [ P_"in"  - P_"out" ] + rho_"in" A_"xs,in"  u_"x,in"^2 
- rho_"out" A_"xs,out"  u_"x,out"^2 \ $

Now, 

$ p_x = u_x rho_x A_"xs,x" Delta x   $, 

and we can substitute this in:

$ Delta x A_"xs" (d rho_x u_x)/(d t) = 
& -1/2 rho u_x^2 C_f Delta x P_w + A_"xs" g [ (rho z)_"in"  - (rho z)_"out" ] \
& + A_"xs" [ P_"in"  - P_"out" ] + rho_"in" A_"xs,in"  u_"x,in"^2 
- rho_"out" A_"xs,out"  u_"x,out"^2 \ $

Divide throughout by $Delta x$,

$  A_"xs" (d rho_x u_x)/(d t) = 
& -1/2 rho u_x^2 C_f  P_w + A_"xs" g [ (rho z)_"in"  - (rho z)_"out" ]/(Delta x) \
& + A_"xs" [ P_"in"  - P_"out" ]/(Delta x) + (rho_"in" A_"xs,in"  u_"x,in"^2 
- rho_"out" A_"xs,out"  u_"x,out"^2)/(Delta x) \ $

Let's put everything in terms of mass flowrate $dot(m) = rho A u$

$   (d dot(m))/(d t) = 
& -1/2 rho (dot(m)/(rho A_"xs") )^2 C_f  P_w + A_"xs" g [ (rho z)_"in"  - (rho z)_"out" ]/(Delta x) \
& + A_"xs" [ P_"in"  - P_"out" ]/(Delta x) + (rho_"in" A_"xs,in"  (dot(m)/(rho A))_"in"^2 
- rho_"out" A_"xs,out"  (dot(m)/(rho A))_"out"^2)/(Delta x) \ $

$   (d dot(m))/(d t) = 
& -1/2  dot(m)^2/(rho A_"xs"^2)  C_f  P_w + A_"xs" g [ (rho z)_"in"  - (rho z)_"out" ]/(Delta x) \
& + A_"xs" [ P_"in"  - P_"out" ]/(Delta x) + (rho_"in" A_"xs,in"  (dot(m)/(rho A))_"in"^2 
- rho_"out" A_"xs,out"  (dot(m)/(rho A))_"out"^2)/(Delta x) \ $

Limit $Delta x -> 0$:

$   (d dot(m))/(d t) = 
& -1/2  dot(m)^2/(rho _"xs"A^2)  C_f  P_w - A_"xs" g  diff/(diff x) (rho z) \
& - A_"xs" diff/(diff x) [ P ] - diff/(diff x) 
[rho_"in" A_"xs,in"  (dot(m)/(rho A))_"in"^2 ] \ $

In the case where the fluid is essentially incompressible, such as water,
the changes in fluid velocity, fluid density and cross sectional area 
at the inlet and outlet are essentially negligible or zero:

$   (d dot(m))/(d t) = 
& -1/2  dot(m)^2/(rho _"xs"A^2)  C_f  P_w - A_"xs" g  diff/(diff x) (rho z) 
 - A_"xs" diff/(diff x) [ P ] \ $

$   (d dot(m))/(d t)  
& +  (C_f  P_w)/(2 rho A_"xs"^2) dot(m)^2  +   rho g A_"xs" (diff z)/(diff x) 
 + A_"xs" (diff P)/(diff x)  = 0 \ $

If we want our equations to account for directionality, then we replace 
the square term by an absolute value. Doing so, we arrive at the modelica 
expression for 1 dimensional water pipe flow @Casella2003, which 
can essentially be used for (mostly) incompressible liquids as well:

$   (d dot(m))/(d t)  
& +  (C_f  P_w)/(2 rho _"xs"A^2) dot(m) |dot(m)|  +   rho g A_"xs" (diff z)/(diff x) 
 + A_"xs" (diff P)/(diff x)  = 0 \ $

In modelica, the $(d dot(m))/(d t)$ term is switched off to prevent fast 
pressure oscillations @Casella2003.

=== Energy Balance

For sensible heat energy balance, or enthalpy balance, we have 

$ (diff (m tilde(h)))/(diff t) = 
& [dot(m) tilde(h)]_"in" - 
[dot(m) tilde(h)]_"out" + Q_"gen" + Q_"supplied"
$

Where $Q_"gen"$ is the work done by the fluid that supplies heat essentially 
due to friction. For now, we ignore all other kind of work. 
If we consider frictional force, we need to consider 

Next, let's consider heat added through the walls as the only supply of 
heat form the outside.

$ (diff (m tilde(h)))/(diff t) = [dot(m) tilde(h)]_"in" - 
[dot(m) tilde(h)]_"out" + Q_"gen" + q_"wall" A_"surf"  
$


The final form of the equation looks like @Casella2003:

$ rho A_"xs" (diff tilde(h))/(diff t) + rho A_"xs" u (diff tilde(h))/(diff x) -  
A_"xs" (diff p)/(diff t)  = q_"wall" P_w $

I don't know whwere the $(diff p)/(diff t)$ term comes from, hardly ever 
seen it in energy balances. Usually PV work is considered for using 
enthalpy. My guess is that this is due to friction and whatever other 
interaction with mechanical work.

From later work in @Franke2009, a clue comes about 
where I should have been using internal energy rather than the enthalpy.
For incompressible systems with constant volume, PV is constant, so 
it doesn't really matter whether I say it's dh or du. In compressible 
flow, it may be more important to consider it from first principles.

$ (diff (m tilde(u)))/(diff t) = 
& [dot(m) tilde(h)]_"in" - 
[dot(m) tilde(h)]_"out" + q_"wall" A_"surf" $

Neglecting $Q_"gen"$ and substituting $m tilde(u) equiv m tilde(h) - P V$

$ (diff (m h - P V))/(diff t) = 
& [dot(m) tilde(h)]_"in" - 
[dot(m) tilde(h)]_"out" + q_"wall" A_"surf" $


$ (diff m h )/(diff t) 
- (diff P V)/(diff t)
= 
& [dot(m) tilde(h)]_"in" - 
[dot(m) tilde(h)]_"out" + q_"wall" A_"surf" $

With constant volume,

$ V (diff rho h )/(diff t) 
- V (diff P )/(diff t)
= 
& [dot(m) tilde(h)]_"in" - 
[dot(m) tilde(h)]_"out" + q_"wall" A_"surf" $

$ A_"xs" Delta x (diff rho h )/(diff t) 
- A_"xs" Delta x (diff P )/(diff t)
= 
& [dot(m) tilde(h)]_"in" - 
[dot(m) tilde(h)]_"out" + q_"wall" A_"surf" $

$ A_"xs" (diff rho h )/(diff t) 
- A_"xs" (diff P )/(diff t)
= 
& - (diff dot(m) tilde(h))/(diff x) + q_"wall" P_w $

We may neglect mass flowrate changes along x for incompressible 
fluids and changes in $rho$ as well:

$ A_"xs" rho (diff  h )/(diff t) 
- A_"xs" (diff P )/(diff t)
= 
& - rho A u (diff  tilde(h))/(diff x) + q_"wall" P_w $

Thus we arrive at the incompressible flow expression for 
the 1D pipe flow @Casella2003.

== multiphase flow

Modelica bases the Flow1D2ph ("flow 1D 2 phase") solver on 
the same mass, energy and momentum balances @Casella2003 
used for the 1D pipe flow. However, it was suggested to use two 
models for the two different phases @Casella2003.


= Turbine and Compressor Modelling

== Compressors 

For compressors, one of the first things to consider is 
the compressor map, which I suppose is similar to a pump curve.
The compressor map shows the steady state behaviour of the 
compressor at different flowrates and etc.

The compressor map has a form @Vepa2013:

$ Psi_"comp" (Phi) = Psi_"C0" + H [
  1 + 3/2 ((Phi - Phi_0)/F - 1)
  -1/2 ((Phi - Phi_0)/F - 1)^3
]
$

$Psi_"comp" (Phi)$ is the non-dimensional compressor 
pressure which is a function of $Phi$, the non dimensional 
mass flowrate @Vepa2013. $Phi_0$ and $Psi_"C0"$ are 
the reference steady operating points, while H and F are 
empirical parameters which define the compressor map shape 
@Vepa2013.

For these, Moore-Greitzer and the non-linear extended Moore-Greitzer 
model might work @Vepa2013.


= Nonlinear equation solving 

Like it or not, the 1D compressible gas are highly nonlinear.
Modelica has means to solve nonlinear equations, as do OpenFOAM.

The pimple algorithm used for rhoPimpleFoam may be a good place 
to start. The notes on CFD by Greenshields may be a good reference
@Greenshields2022. For weakly compressible flows, at low mach 
number, the SIMPLE, PISO and PIMPLE algorithm work well, but are 
ineffective in transonic and supersonic flow @Epikhin2019.
It is therefore important to know the kinds of compressible 
flows that happen in power plants and 
HTGRs so that we know how to model and solve them. At least in gas 
turbine engines and such. 

Now some useful fluid dynamics codes used in HGTR were listed in 
Huning's review paper @Huning2021. This included the CFD code 
Trio_U @Huning2021 which is an open source BSD-2 clause library.
Huning also lists important scenarios to consider for 
HTGR, including but not limited to depressurised-LOFC, 
Air Ingress, pressurised-LOFC and water ingress @Huning2021.

Another notable work is the High Temperature Test Facility (HTTF) in 
Oregon State University spearheaded by Professor Isabela Gutowska 
@Gutowska2019. In HTTF simulation work, I did not see much
compressible flow analysis for sonic or transonic flow.

Probably need to read up more though...





//#bibliography("../main.bib",)
#bibliography("../main.bib",
style: "chicago-author-date")
