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
(FOSS) frameworks and software for this.

= Commercial and Proprietary System Codes

So far, for commercial codes, there is the Very Superior Old Programs 
(VSOP) suite which has been used for Anticipated Transient without 
SCRAM in HTR studies @bakhri2018steady. Of course, there is the classic 
RELAP5 @fletcher1992relap5 and Relap-7 @berry2018relap system codes 
traditionally used for system level simulation. Also we have the 
system analysis module (SAM) developed by ANL @zhou2021development.
Some important accidents 
to study include steam generator rupture, where the following reaction 
occurs @bakhri2018steady:

$ H_2 O (g) + C (s) -> C O (g) + H_2 (g) $

Such chemical are good to simulate as well, especially for transients such 
as steam generator break. For contingencies and severe accidents,
often MELCOR is used @li2014severe as it was for the PWR.


= Fuel Management and Fuel Cycles

In Indonesia, Batan has developed Batan MPASS for fuel management
@hong2001nuclear.




= Monte Carlo Codes 

Existing Monte Carlo codes include OpenMC @romano2015openmc written 
in C++, SCONE written in fortran @kowalski2021scone. Also, we have 
the classic codes such as Serpent @leppanen2013serpent and MCNP 
@brown2002mcnp. There is also RMC @wang2015rmc and 
COG @buck1999applications. 

For FOSS codes, however, it seems OpenMC and SCONE are most suitable 
for use and for re-writing in Rust because both are released under 
the MIT license as of 2023.

= Computational Fluid Dynamics 

For thermal hydraulics, the OpenFOAM library @jasak2009openfoam 
licensed under GNU GPL 3 has been a popular choice for coupling 
with both deterministic and monte carlo (stochastic) neutronics 
simulation. For deterministic codes, the GeN-Foam @fiorina2015gen
code has been developed for reactor multiphyiscs and transients.
For coupling with monte carlo codes, OpenFOAM has been coupled with 
Serpent before @castagna2020serpent.

More recently, the Nek5000 platform has been used for thermal hydraulics 
in HTGRs and it has been coupled with OpenMC @novak2022coupled via 
the Multiphysics Object-Oriented Simulation Environment (MOOSE) framework.
This was done through the Cardinal Suite of Open Source Programs 
@novak2022coupled.

#bibliography("main.bib",
style: "chicago-author-date")

