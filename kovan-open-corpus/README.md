# Kovan open corpus

Source documents for Kovan's built-in nuclear-engineering corpus. Kovan
(part of [OUTRAM PARK](https://github.com/theodoreOnzGit/outram-park-backend))
compiles the corpus *metadata* (titles, authors, topics) into its binary; the
PDFs live here, in a separate repository, so they are never shipped in the
Kovan crate and can be versioned independently.

Every document in this folder is redistributable, on one of these grounds,
each stated by the document itself or by its publisher:

1. **U.S. NRC documents: open access, U.S. Government Work.**
2. **Documents authored by the repository owner** (Theodore Kay Chen Ong).
3. **Open access under a Creative Commons Attribution licence (CC BY).**
4. **Other U.S. Government reports marked for unlimited distribution.**
5. **European Commission (JRC) reports, whose reuse the Commission authorises.**

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
| `nrc/ML15334A199.pdf` | WASH-1400 (NUREG-75/014), *Reactor Safety Study: An Assessment of Accident Risks in U.S. Commercial Nuclear Power Plants*, Executive Summary and Main Report (second printing; the appendices are listed but not included). This copy is NRC official hearing exhibit RIV000147 (Indian Point license renewal), held in ADAMS | U.S. Nuclear Regulatory Commission | October 1975 |
| `nrc/ML070740002.pdf` | NUREG-0800, Standard Review Plan, Section 4.2, Revision 3, *Fuel System Design* | U.S. NRC staff | March 2007 |
| `nrc/ML13028A421.pdf` | NUREG/KM-0004, *Fuel Behavior under Abnormal Conditions* | R.O. Meyer, U.S. NRC (retiring staff member, per the report's foreword) | January 2013 |
| `nrc/ML13325A086.pdf` | NUREG/KM-0006, *Fundamental Theory of Scientific Computer Simulation Review* | J.S. Kaizer, U.S. NRC Office of Nuclear Reactor Regulation | November 2013 |
| `nrc/ML16245A032.pdf` | NUREG-2201, *Probabilistic Risk Assessment and Regulatory Decisionmaking: Some Frequently Asked Questions* | N. Siu, M. Stutzke, S. Dennis, D. Harrison, U.S. NRC Office of Nuclear Regulatory Research | September 2016 |
| `nrc/ML12338A215.pdf` | NUREG/CR-7041 (ORNL/TM-2011/21), *SCALE/TRITON Primer: A Primer for Light Water Reactor Lattice Physics Calculations* | B.J. Ade, Oak Ridge National Laboratory, for the U.S. NRC | November 2012 |
| `nrc/nureg-cr-2671-marviken.pdf` | NUREG/CR-2671 (MXC-301), *The Marviken Full Scale Critical Flow Tests: Summary Report*, Joint Reactor Safety Experiments in the Marviken Power Station, Sweden | Marviken project, for the U.S. NRC | 1982 |
| `nrc/ML22063A060.pdf` | NUREG/CR-7289 (ORNL/TM-2021/2002), *Nuclear Data Assessment for Advanced Reactors* | F. Bostelmann, G. Ilas, C. Celik, A.M. Holcomb, W.A. Wieselquist, Oak Ridge National Laboratory, for the U.S. NRC | March 2022 |

The NUREG/CR reports were prepared by contractors (Oak Ridge National
Laboratory; the Marviken project) under NRC sponsorship and published by the
NRC in its NUREG series. They are included on the basis of the NRC statement
above, as NRC publications.

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

Also under CC BY, each stating it in the article itself:

| File | Paper | Licence statement |
|---|---|---|
| `cc-by/she2021pangu.pdf` | D. She, F. Chen, B. Xia, L. Shi, "Simulation of the HTR-10 Operation History With the PANGU Code", *Frontiers in Energy Research* 9:704116 (2021), <https://doi.org/10.3389/fenrg.2021.704116> | "distributed under the terms of the Creative Commons Attribution License (CC BY)" |
| `cc-by/pichler2020-316l-thermophysical-properties.pdf` | P. Pichler, B.J. Simonds, J.W. Sowards, G. Pottlacher, "Measurements of thermophysical properties of solid and liquid NIST SRM 316L stainless steel", *Journal of Materials Science* (Springer), <https://doi.org/10.1007/s10853-019-04261-6> | Creative Commons licence; also "Official contribution of the National Institute of Standards and Technology; not subject to copyright in the United States" |

CC BY requires attribution: the authors, titles and DOIs above are that
attribution, and the files are unmodified (only renamed for shorter paths).

## 4. Other U.S. Government reports

| File | Document | Basis |
|---|---|---|
| `us-doe/kim1975-thermophysical-properties-stainless-steels.pdf` | C.S. Kim, *Thermophysical Properties of Stainless Steels*, ANL-75-55, Argonne National Laboratory, prepared for the U.S. Energy Research and Development Administration under Contract W-31-109-Eng-38, September 1975 | The title page states "DISTRIBUTION OF THIS DOCUMENT IS UNLIMITED" (checked on the scanned title page, 22 September 2026) |

## 5. European Commission (JRC)

| File | Document | Basis |
|---|---|---|
| `jrc/kjna28712enn.pdf` | K. Kugeler, H. Nabielek, D. Buckthorpe, *The High Temperature Gas-cooled Reactor: Safety considerations of the (V)HTR-Modul*, EUR 28712 EN, Publications Office of the European Union, 2017, <https://doi.org/10.2760/270321> | The report states: "Reuse is authorised provided the source is acknowledged. The reuse policy of European Commission documents is regulated by Decision 2011/833/EU (OJ L 330, 14.12.2011, p. 39)." Acknowledged here. |

## Provenance

The files were collected by the repository owner and added on 22 September
2026. Bibliographic details were read from each document's own title and
front-matter pages; licence details from the sources cited in each section.
Nothing here is a restricted or proprietary document; anything that is must
not be added to this repository.
