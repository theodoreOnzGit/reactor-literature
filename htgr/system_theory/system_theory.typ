// for Latex like fonts
#set par(leading: 0.55em, first-line-indent: 1.8em, justify: true)
#set text(font: "New Computer Modern")
#show raw: set text(font: "New Computer Modern Mono")
#show par: set block(spacing: 0.55em)
#show heading: set block(above: 1.4em, below: 1em)


// for numbered headings
#set heading(numbering: "1.a.")

// underline link elements
#show link: underline
#show link: set text(blue)

= Introduction 

This document outlines some existing free and open source (FOSS) software 
for system level code.

For system level code, calculation times need to be short. In the case 
of Digital Twins and plant simulators, the calculations need to be 
faster than real-time. This is an additional constraint. 

= Literature Review

Existing system codes such as the many versions of RELAP @fletcher1992relap5
@berry2018relap and SAM @zhou2021development are unfortunately closed source.
Nevertheless, some of their working principles may be available in literature.
We shall explore how some of them solve the thermal hydraulics equations
here. The important thermal hydraulics for HTGR are compressible flow 
within the primary loop @zhang2006design 
and multiphase flow within the secondary loop for steam generators in the 
Rankine cycle @zhang2006design if we want to simulate that as well.
However, if we want to simulate design basis events such as water ingress
@fang2023transport, then the interaction between multiphase 
flow (water) and single phase compressible flow (gas) may be quite 
important.

Previous work done here includes the Engineering Simulation System (ESS)
designed to model startup, shutdown and accident scenarios for the HTR-PM 
@sui2014engineering. This ESS in turn uses vPower for its thermal hydraulics 
@sui2014engineering. The vPower platform simulation platform was developed 
by Beijing Neowise Technology Company Ltd @tang2017development. vPower 
is responsible for the most of the secondary loop and control systems 
while Thermix/BLAST is used for core thermal hydraulics and neutronics 
@tang2017development. Thermix was developed by Julich Nuclear research 
center of Germany while BLAST was developed by ORNL @tang2017development.
Unfortunately, this is not a 100% FOSS system, which makes it difficult 
for researchers to repeat unless they already have access to the software.

Now, ANL's System Analysis Module code based on MOOSE is also another 
well known system code, but it is closed source and catered more for 
incompressible but thermally expandable flows @hu2021sam. Therefore,
it has little use here. However, Modelica's open source module 
has been used for studying Small Modular HTGRs in the context of 
desalination @tassone2021object. In this study, the NuKomp 
1.2 and the ThermoPower library @casella2009thermopower within modelica 
were used. Both these modelica libraries have been used in modelling 
multiphase flow phenomena in the IRIS PWR @cammi2011object. The 
ThermoPower library @casella2009thermopower in modelica is open sourced
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
@casella2003modelling as opposed to Finite Volume Modelling used in 
OpenFOAM @jasak2009openfoam. Nevertheless, it is able to handle 
compressible flows, which makes it quite useful for power plant modelling.

#bibliography("../main.bib",
style: "chicago-author-date")
