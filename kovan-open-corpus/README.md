# Kovan open corpus

Source documents for Kovan's built-in nuclear-engineering corpus. Kovan
(part of [OUTRAM PARK](https://github.com/theodoreOnzGit/outram-park-backend))
compiles the corpus *metadata* (titles, authors, topics) into its binary; the
PDFs live here, in a separate repository, so they are never shipped in the
Kovan crate and can be versioned independently.

Every document in this folder is redistributable, on one of three grounds:

1. **U.S. NRC documents: open access, U.S. Government Work.**
2. **Documents authored by the repository owner** (Theodore Kay Chen Ong).
3. **Open access under the Creative Commons Attribution licence (CC BY 4.0).**

## 1. U.S. NRC documents

The U.S. Nuclear Regulatory Commission's Site Disclaimer
(<https://www.nrc.gov/about-nrc/site-disclaimer>, accessed 22 September 2026)
states, verbatim:

> NRC's website constitutes a U.S. Government Work under federal copyright law
> and as such, it is not subject to copyright. It is freely available for
> non-exclusive rights in publication or reproduction for any purpose, in any
> form, and there are no restrictions on use. Similarly, there is no restriction
> on the right of others to use or reproduce the same material, now or in the
> future. NRC would appreciate the courtesy of credit for the publication.
> Permission to reproduce any copyrighted material (including photos or
> graphics) must be obtained from the original source.

The underlying statute is 17 U.S.C. § 105 (no copyright in works of the U.S.
Government). As the NRC asks, each document is credited to the NRC below. The
last sentence of the quotation still applies: any figure or photograph inside a
report that is credited to a third party keeps that party's copyright.

Each document is the NRC's own publication, retrieved from the NRC's ADAMS
public library under its accession number.

| File | Document | Prepared by | Published |
|---|---|---|---|
| `nrc/ML070740002.pdf` | NUREG-0800, Standard Review Plan, Section 4.2, Revision 3, *Fuel System Design* | U.S. NRC staff | March 2007 |
| `nrc/ML13028A421.pdf` | NUREG/KM-0004, *Fuel Behavior under Abnormal Conditions* | R.O. Meyer, U.S. NRC (retiring staff member, per the report's foreword) | January 2013 |
| `nrc/ML13325A086.pdf` | NUREG/KM-0006, *Fundamental Theory of Scientific Computer Simulation Review* | J.S. Kaizer, U.S. NRC Office of Nuclear Reactor Regulation | November 2013 |
| `nrc/ML16245A032.pdf` | NUREG-2201, *Probabilistic Risk Assessment and Regulatory Decisionmaking: Some Frequently Asked Questions* | N. Siu, M. Stutzke, S. Dennis, D. Harrison, U.S. NRC Office of Nuclear Regulatory Research | September 2016 |
| `nrc/ML12338A215.pdf` | NUREG/CR-7041 (ORNL/TM-2011/21), *SCALE/TRITON Primer: A Primer for Light Water Reactor Lattice Physics Calculations* | B.J. Ade, Oak Ridge National Laboratory, for the U.S. NRC | November 2012 |
| `nrc/ML22063A060.pdf` | NUREG/CR-7289 (ORNL/TM-2021/2002), *Nuclear Data Assessment for Advanced Reactors* | F. Bostelmann, G. Ilas, C. Celik, A.M. Holcomb, W.A. Wieselquist, Oak Ridge National Laboratory, for the U.S. NRC | March 2022 |

The two NUREG/CR reports were prepared by a contractor (Oak Ridge National
Laboratory) under NRC sponsorship and published by the NRC in its NUREG series.
They are included on the basis of the NRC statement above, as NRC publications.

## 2. Documents by the repository owner

| File | Document | Licence |
|---|---|---|
| `ong/tuas-theodore-ong.pdf` | T.K.C. Ong, S. Xiao, P.F. Peterson, "An open-source Thermo-hydraulic Uniphase Advection and Convection Solver for Salt Flows (TUAS)", *International Journal of Advanced Nuclear Reactor Design and Technology* 6 (2024) 281–301, <https://doi.org/10.1016/j.jandt.2025.03.006> | The article itself states: "This is an open access article under the CC BY license (<http://creativecommons.org/licenses/by/4.0/>)." |

## 3. Open access, CC BY 4.0

Papers from **PHYSOR 2026, The International Conference on Physics of
Reactors** (Torino, Italy, 19–23 April 2026; proceedings ISBN
979-12-81583-46-7), each deposited on Zenodo under **CC BY 4.0**, as recorded
on its Zenodo DOI record (checked 22 September 2026). The PDFs do not restate
the licence; the DOI record is the source for it.

| File | Paper | DOI |
|---|---|---|
| `physor-2026/physor2026-206-hori-pod-burnup-httr.pdf` | T. Hori, G. Chiba, "Burnup Calculation Using POD-Based Neutron Spectrum Reconstruction: Application to High-Temperature Gas-Cooled Reactor Core Analysis" | <https://doi.org/10.5281/zenodo.20803716> |
| `physor-2026/physor2026-306-bures-subcritical-simulator.pdf` | L. Bureš, Z. Elter, "Design and Neutronics of a Physical Subcritical-Assembly Simulator for Reactor-Physics Education" | <https://doi.org/10.5281/zenodo.20804104> |
| `physor-2026/physor2026-343-acierno-hexana-sfr.pdf` | A. Acierno, J. Politello, "Preliminary Thermal-Hydraulics and Neutronics Studies on HEXANA Pool-Type Sodium-cooled Fast Reactor Concept" | <https://doi.org/10.5281/zenodo.20803769> |
| `physor-2026/physor2026-449-krpan-msre-hyper-fidelity.pdf` | R. Krpan, C. Fiorina, K. Clarno, C. Genoni, C.A. Gentry, S.M. Park, J. Ragusa, "A peek into the MSRE, six decades later: a hyper-fidelity simulation of the classical molten salt reactor" | <https://doi.org/10.5281/zenodo.20803785> |

CC BY 4.0 requires attribution: the authors, title and DOI above are that
attribution, and the files are unmodified (only renamed for shorter paths).

## Provenance

The files were collected by the repository owner and added on 22 September
2026. Bibliographic details were read from each document's own title and
front-matter pages; licence details from the sources cited in each section.
Nothing here is a restricted or proprietary document; anything that is must
not be added to this repository.
