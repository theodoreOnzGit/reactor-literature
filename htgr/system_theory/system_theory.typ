#set par(leading: 0.55em, first-line-indent: 1.8em, justify: true)
#set text(font: "New Computer Modern")
#show raw: set text(font: "New Computer Modern Mono")
#show par: set block(spacing: 0.55em)
#show heading: set block(above: 1.4em, below: 1em)

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
@sui2014engineering.


#bibliography("../main.bib",
style: "chicago-author-date")
