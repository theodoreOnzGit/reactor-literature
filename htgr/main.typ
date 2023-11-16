// set some latex settings 
#set par(leading: 0.55em, first-line-indent: 1.8em, justify: true)
#set text(font: "New Computer Modern")
#show raw: set text(font: "New Computer Modern Mono")
#show par: set block(spacing: 0.55em)
#show heading: set block(above: 1.4em, below: 1em)

= Introduction 

This literature review is aimed at high temperature gas cooled reactor 
simulation, for both system code and high fidelity simulations. My aim 
is system codes first, and I wish to develop a Free and Open Source 
(FOSS) frameworks and software for this. Of course, CFD and multiphyiscs 
can come later and all be written in Rust, but this is quite important too.

= Commercial and Proprietary System Codes

So far, for commercial codes, there is the Very Superior Old Programs 
(VSOP) suite which has been used for Anticipated Transient without 
SCRAM in HTR studies @Bakhri2018. Of course, there is the classic 
RELAP5 @Fletcher1992 and Relap-7 @Berry2018 system codes 
traditionally used for system level simulation. Also we have the 
system analysis module (SAM) developed by ANL @Zhou2021.
Some important accidents 
to study include steam generator rupture, where the following reaction 
occurs @Bakhri2018:

$ H_2 O (g) + C (s) -> C O (g) + H_2 (g) $

Such chemical are good to simulate as well, especially for transients such 
as steam generator break. For contingencies and severe accidents,
often MELCOR is used @Li2014 as it was for the PWR.


= Overview Fuel Management and Fuel Cycles

In Indonesia, Batan has developed Batan MPASS for fuel management
@Hong2001.




= Overview Monte Carlo Codes 


Existing Monte Carlo codes include OpenMC @Romano2015 written 
in C++, SCONE written in fortran @Kowalski2021. Also, we have 
the classic codes such as Serpent @Leppaenen2013 and MCNP 
@Brown2002. There is also RMC @Wang2015 and 
COG @Buck1999. 

For FOSS codes, however, it seems OpenMC and SCONE are most suitable 
for use and for re-writing in Rust because both are released under 
the MIT license as of 2023.

= Computational Fluid Dynamics and Multiphysics Platforms

For thermal hydraulics, the OpenFOAM library @Jasak2009 
licensed under GNU GPL 3 has been a popular choice for coupling 
with both deterministic and monte carlo (stochastic) neutronics 
simulation. For deterministic codes, the GeN-Foam @Fiorina2015
code has been developed for reactor multiphyiscs and transients.
For coupling with monte carlo codes, OpenFOAM has been coupled with 
Serpent before @Castagna2020.

More recently, the Nek5000 platform has been used for thermal hydraulics 
in HTGRs and it has been coupled with OpenMC @Novak2022 via 
the Multiphysics Object-Oriented Simulation Environment (MOOSE) framework.
This was done through the Cardinal Suite of Open Source Programs 
@Novak2022.

#bibliography("main.bib",
style: "chicago-author-date")

