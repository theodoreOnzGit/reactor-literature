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
SCRAM in HTR studies @bakhri2018steady. Some important accidents 
to study include steam generator rupture, where the following reaction 
occurs @bakhri2018steady:

$ H_2 O (g) + C (s) -> C O (g) + H_2 (g) $

Such chemical are good to simulate as well, especially for steam genera

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

#bibliography("main.bib",
style: "chicago-author-date")
