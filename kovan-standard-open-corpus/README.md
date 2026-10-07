# Kovan standard open corpus

Source documents for **Kovan's built-in nuclear-engineering corpus**. Kovan
(part of [OUTRAM PARK](https://github.com/theodoreOnzGit/outram-park-backend))
compiles the metadata of exactly these documents (titles, authors, topics)
into its binary (`crates/kovan/src/corpus.rs`); the PDFs live here so they are
never shipped in the Kovan crate. Only documents in this folder are
hardcoded into Kovan. The owner's other open literature is in
[`../theodore-open-corpus/`](../theodore-open-corpus/).

Every document here is redistributable, on one of ~~six~~ ~~seven~~ nine grounds:

1. **U.S. NRC documents: open access, U.S. Government Work.**
2. **Open access under the Creative Commons Attribution licence (CC BY 4.0).**
   (Extended 7 October 2026 beyond the PHYSOR 2026 papers to any article
   whose own page prints CC BY; see section 2.)
3. **U.S. EPA documents: free distribution for non-commercial, scientific and
   educational purposes** (added 28 September 2026; see section 3 for the
   commercial-use caveat).
4. **U.S. Department of Energy reports marked for unlimited distribution**
   (added 6 October 2026, owner's direction; see section 4).
5. **European Commission documents whose reuse is authorised with
   acknowledgement** (added 6 October 2026; see section 5).
6. **U.S. federal regulations: the Code of Federal Regulations** (added
   6 October 2026; see section 6).
7. **Documents released by their copyright holder under a permissive
   open-source licence (BSD-style) that permits redistribution** (added
   7 October 2026, owner's direction; see section 8, since section 7 already
   holds the corpus rule). **Extended the same day** (owner, OUTRAM PARK
   GitHub #760: "project documentation under a software licence that covers
   its documentation") to project documentation shipped under the project's
   open-source licence: MIT (OpenMC), LGPL 2.1 (MOOSE), as well as BSD.
8. **Other works of the U.S. Government that state on their face that they
   are not subject to copyright** (added 7 October 2026: the Congressional
   Research Service and the Government Accountability Office; see section 9).
9. **Creative Commons licences other than CC BY, printed on the document or
   its official landing page: CC BY-SA, CC BY-NC, CC BY-NC-ND** (added
   7 October 2026, owner's direction on #760: "CC BY-NC-ND qualifies"; see
   section 10).

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

**Where to check:** the NRC Site Disclaimer page quoted above
(<https://www.nrc.gov/about-nrc/site-disclaimer>); it covers every NRC document
in this table. The documents themselves carry no licence statement of their
own.

| File | Document | Prepared by | Published |
|---|---|---|---|
| `nrc/ML15334A199.pdf` | WASH-1400 (NUREG-75/014), *Reactor Safety Study: An Assessment of Accident Risks in U.S. Commercial Nuclear Power Plants*, Executive Summary and Main Report (second printing; the appendices are listed but not included). This copy is NRC official hearing exhibit RIV000147 (Indian Point license renewal), held in ADAMS | U.S. Nuclear Regulatory Commission | October 1975 |
| `nrc/ML070740002.pdf` | NUREG-0800, Standard Review Plan, Section 4.2, Revision 3, *Fuel System Design* | U.S. NRC staff | March 2007 |
| `nrc/ML13028A421.pdf` | NUREG/KM-0004, *Fuel Behavior under Abnormal Conditions* | R.O. Meyer, U.S. NRC (retiring staff member, per the report's foreword) | January 2013 |
| `nrc/ML13325A086.pdf` | NUREG/KM-0006, *Fundamental Theory of Scientific Computer Simulation Review* | J.S. Kaizer, U.S. NRC Office of Nuclear Reactor Regulation | November 2013 |
| `nrc/ML16245A032.pdf` | NUREG-2201, *Probabilistic Risk Assessment and Regulatory Decisionmaking: Some Frequently Asked Questions* | N. Siu, M. Stutzke, S. Dennis, D. Harrison, U.S. NRC Office of Nuclear Regulatory Research | September 2016 |
| `nrc/ML070810350.pdf` | NUREG-0800, *Standard Review Plan for the Review of Safety Analysis Reports for Nuclear Power Plants*, Table of Contents, Revision 6 | U.S. NRC staff | March 2007 |
| `nrc/ML17325A611.pdf` | Regulatory Guide 1.232, Revision 0, *Guidance for Developing Principal Design Criteria for Non-Light-Water Reactors* (ARDC, SFR-DC, MHTGR-DC) | U.S. NRC (technical lead J. Mazza) | April 2018 |
| `nrc/nureg-1537-part1-1996.pdf` | NUREG-1537, Part 1, *Guidelines for Preparing and Reviewing Applications for the Licensing of Non-Power Reactors: Format and Content* | U.S. NRC Office of Nuclear Reactor Regulation | February 1996 |
| `nrc/nureg-1520-rev2-2015.pdf` | NUREG-1520, Revision 2, *Standard Review Plan for Fuel Cycle Facilities License Applications*, Final Report | U.S. NRC Office of Nuclear Material Safety and Safeguards | 2015 |
| `nrc/nureg-1555-1999.pdf` | NUREG-1555, *Standard Review Plans for Environmental Reviews for Nuclear Power Plants* (Environmental Standard Review Plan) | U.S. NRC Office of Nuclear Reactor Regulation | October 1999 |
| `nrc/nureg-0654-fema-rep-1-rev2-2019.pdf` | NUREG-0654/FEMA-REP-1, Revision 2, *Criteria for Preparation and Evaluation of Radiological Emergency Response Plans and Preparedness in Support of Nuclear Power Plants*, Final Report | U.S. NRC and the Federal Emergency Management Agency (both U.S. Government) | December 2019 |
| `nrc/nureg-br-0167-1993-sqa-program-and-guidelines.pdf` | NUREG/BR-0167, *Software Quality Assurance Program and Guidelines* (scanned; 58 pp.). Software QA source for Kovan's concept tree (`software-quality-assurance`, OUTRAM PARK #760) | U.S. NRC, Division of Information Support Services, Office of Information Resources Management | February 1993 |
| `nrc/ML18137A389.pdf` | NUREG/BR-0500, Revision 4, *Safety Culture Policy Statement* (brochure, 2 pp.). IAEA issue 3, management | U.S. NRC | May 2018 |
| `nrc/ML25120A424.pdf` | NUREG-0980, Vol. 1, No. 12, *Nuclear Regulatory Legislation*, 117th Congress; 2nd Session (565 pp.; compiles legislation signed into law through January 3, 2023, plus the ADVANCE Act of 2024). IAEA issue 5, legal framework | Office of the General Counsel, U.S. NRC | April 2025 |
| `nrc/ML22143A963.pdf` | NUREG-2159, Revision 1, *Acceptable Standard Format and Content for the Fundamental Nuclear Material Control Plan Required for Special Nuclear Material of Moderate Strategic Significance*, Final Report. IAEA issue 6, safeguards | T. Pham, G. Tuttle, S. Ani, Office of Nuclear Material Safety and Safeguards, U.S. NRC | July 2022 |
| `nrc/nureg-1736-2001.pdf` | NUREG-1736, *Consolidated Guidance: 10 CFR Part 20 — Standards for Protection Against Radiation*, Final Report (413 pp.). IAEA issue 8, radiation protection. ADAMS holds it in two parts, ML013330106 ("[1:2] Cover - Chapter 3", SHA-256 `d1cc9b16…95bd`) and ML013330154 ("[2:2] Appendix A - End", SHA-256 `b9d1be10…6b96`), both listed on the NRC's NUREG-1736 page; this file is the two joined unchanged with `pdfunite` (parts 1 then 2) | R.E. Zelac, J.L. Cameron, H. Karagiannis, J.R. McGrath, S.S. Sherbini, M.L. Thomas, J.E. Wigginton, Office of Nuclear Material Safety and Safeguards, U.S. NRC | October 2001 |
| `nrc/nureg-1032-1988.pdf` | NUREG-1032, *Evaluation of Station Blackout Accidents at Nuclear Power Plants: Technical Findings Related to Unresolved Safety Issue A-44*, Final Report (scanned, 175 pp.). IAEA issue 9, electrical grid. Copy from OSTI (<https://www.osti.gov/servlets/purl/5122568>, OSTI ID 5122568), whose cover carries the stamp "DISTRIBUTION OF THIS DOCUMENT IS UNLIMITED" | P.W. Baranowsky, Office of Nuclear Regulatory Research and Office of Nuclear Reactor Regulation, U.S. NRC | June 1988 |
| `nrc/nureg-br-0215-rev2-2004.pdf` | NUREG/BR-0215, Revision 2, *Public Involvement in the Nuclear Regulatory Process* (brochure, 16 pp.). IAEA issue 11, stakeholder involvement. Date and office from the NRC's page for the brochure (<https://www.nrc.gov/reading-rm/doc-collections/nuregs/brochures/br0215/>, read 7 October 2026); the brochure prints no date | Office of Public Affairs, U.S. NRC | October 2004 |
| `nrc/ML12188A053.pdf` | Regulatory Guide 4.7, Revision 3, *General Site Suitability Criteria for Nuclear Power Stations*. IAEA issue 12, site | U.S. NRC, Office of Nuclear Regulatory Research (technical lead J. Philip) | March 2014 |
| `nrc/ML051390356.pdf` | NUREG-0396 / EPA 520/1-78-016, *Planning Basis for the Development of State and Local Government Radiological Emergency Response Plans in Support of Light Water Nuclear Power Plants*. IAEA issue 14, emergency planning | A U.S. NRC and U.S. EPA Task Force on Emergency Planning (co-chairmen H.E. Collins, B.K. Grimes, NRC; senior EPA representative F. Galpin); both U.S. Government agencies, so 17 U.S.C. § 105 covers it | December 1978 |
| `nrc/ML22258A204.pdf` | Regulatory Guide 5.71, Revision 1, *Cybersecurity Programs for Nuclear Power Reactors*. IAEA issue 15, nuclear security | U.S. NRC (technical lead K. Lawson-Jenkins) | February 2023 |
| `nrc/ML22194A859.pdf` | NUREG-1757, Volume 2, Revision 2, *Consolidated Decommissioning Guidance: Characterization, Survey, and Determination of Radiological Criteria*, Final Report (579 pp.). IAEA issue 17, radioactive waste and decommissioning | C.S. Barr, S. Clark, G.C. Chapman, D.W. Esh, R.W. Fedors, A.M. Huffert, L.A. Kauffman, M.M. LaFranzo, C.A. McKenney, L.L. Parks, D.W. Schmidt, A.L. Schwartzman, B.A. Watson, Office of Nuclear Material Safety and Safeguards, U.S. NRC | July 2022 |
| `nrc/ML24038A310.pdf` | Regulatory Guide 1.164, Revision 1, *Dedication of Commercial-Grade Items for Use in Nuclear Power Plants*. IAEA issue 19, procurement | U.S. NRC (technical lead D. Zhang) | April 2024 |

**Added 7 October 2026** (the eleven rows from `ML18137A389` down): bedrock
documents for the IAEA Milestones issues, found by a search across the 19
issues (OUTRAM PARK GitHub #760) and each re-read that day. Every one was
written by NRC staff (or, for NUREG-0396, an NRC–EPA task force), as its
title page states; none is a NUREG/CR contractor report. The full text of
each was searched for a copyright notice: none carries one of its own (the
only hits are the standard NUREG notice that codes and standards cited are
"usually copyrighted", and, in NUREG-0980, statutory text about patents and
copyrights). SHA-256 of each file as filed:

| File | SHA-256 |
|---|---|
| `nrc/ML18137A389.pdf` | `738ecb18efe5b600f0ad6f9eca568ec31d57e7e2b48d3578e3f38feffad0b76d` |
| `nrc/ML25120A424.pdf` | `caa3e9e8ae606c0fa0de93d9731665b581b53c2c8c170bd626f3b2a5cf654af9` |
| `nrc/ML22143A963.pdf` | `2741b05e886c2705d87466e52c7334b7b4d308e757619fc37b118f0e6bd8e814` |
| `nrc/nureg-1736-2001.pdf` | `6916e9c8b7d1cf90312985f77955916415538100c693e558aaef790e9a342e17` |
| `nrc/nureg-1032-1988.pdf` | `5e53de5821eda42aa362a74b9257b6e31e66dd4880b9470765841283fb70ac2b` (byte-identical to the OSTI URL above, re-fetched 7 October 2026) |
| `nrc/nureg-br-0215-rev2-2004.pdf` | `afa5cd1002ff0dc1aca851e1d1735b6fc46b61d0e2553e3693506a8d0b78233f` |
| `nrc/ML12188A053.pdf` | `611dee1cb6dd52a942480fd08fd16a36592258ce6fafebbf198b8a6ac56203f9` |
| `nrc/ML051390356.pdf` | `1094d8ef609ea6e4323723c8febf501ed8674f33cda2fba5f025205367f5b65e` |
| `nrc/ML22258A204.pdf` | `4b831929165a3b23273da30aa3915d775ea287e6dc4e679672c48c5191f173cc` |
| `nrc/ML22194A859.pdf` | `2b04c9610ba91c878dae961b618745d6ffd55eba1661bcb53c027ee973670ac1` |
| `nrc/ML24038A310.pdf` | `40b09dd7cb948313300090a75ee61909cbc2d8464462243dc48db64a180170d8` |

**Added 6 October 2026** (the six rows from `ML070810350` down), supplied by
the owner as the sources of Kovan's new concept-tree skeleton (OUTRAM PARK
GitHub issues #724, #726). Files named `ML…` carry their ADAMS accession number
(read from the document or its NRC link); the four named `nureg-…` were
supplied as files, and their accession numbers were not recorded, so they are
named by report number instead. Their `corpus.rs` entries follow when Kovan's
new concept schema lands (#727). NUREG-0654/FEMA-REP-1 is a joint NRC–FEMA
publication; both are U.S. Government agencies, so 17 U.S.C. § 105 covers it.

~~The two NUREG/CR reports were prepared by a contractor (Oak Ridge National
Laboratory) under NRC sponsorship and published by the NRC in its NUREG series.
They are included on the basis of the NRC statement above, as NRC publications.~~
**MOVED 2026-10-07:** the two NUREG/CR reports are no longer held here; see
section 7. Ground 1 now holds only documents written by the NRC itself.

## 2. Open access, CC BY 4.0

Papers from **PHYSOR 2026, The International Conference on Physics of
Reactors** (Torino, Italy, 19–23 April 2026; proceedings ISBN
979-12-81583-46-7), each deposited on Zenodo under **CC BY 4.0**, as recorded
on its Zenodo DOI record (checked 22 September 2026). The PDFs do not restate
the licence; the DOI record is the source for it.

**Where to check:** open each paper's DOI link in the table below; the Zenodo
record page lists the licence. It was checked through Zenodo's API,
`https://zenodo.org/api/records/<record number>`, whose `metadata.license`
field reads `cc-by-4.0` for all four.

| File | Paper | DOI |
|---|---|---|
| `physor-2026/physor2026-206-hori-pod-burnup-httr.pdf` | T. Hori, G. Chiba, "Burnup Calculation Using POD-Based Neutron Spectrum Reconstruction: Application to High-Temperature Gas-Cooled Reactor Core Analysis" | <https://doi.org/10.5281/zenodo.20803716> |
| `physor-2026/physor2026-306-bures-subcritical-simulator.pdf` | L. Bureš, Z. Elter, "Design and Neutronics of a Physical Subcritical-Assembly Simulator for Reactor-Physics Education" | <https://doi.org/10.5281/zenodo.20804104> |
| `physor-2026/physor2026-343-acierno-hexana-sfr.pdf` | A. Acierno, J. Politello, "Preliminary Thermal-Hydraulics and Neutronics Studies on HEXANA Pool-Type Sodium-cooled Fast Reactor Concept" | <https://doi.org/10.5281/zenodo.20803769> |
| `physor-2026/physor2026-449-krpan-msre-hyper-fidelity.pdf` | R. Krpan, C. Fiorina, K. Clarno, C. Genoni, C.A. Gentry, S.M. Park, J. Ragusa, "A peek into the MSRE, six decades later: a hyper-fidelity simulation of the classical molten salt reactor" | <https://doi.org/10.5281/zenodo.20803785> |

CC BY 4.0 requires attribution: the authors, titles and DOIs above are that
attribution, and the files are unmodified (only renamed for shorter paths).

### Other CC BY articles (`cc-by/`, added 7 October 2026)

Journal articles whose own first page states the licence. Both print, in the
"COPYRIGHT" box on PDF page 1: "This is an open-access article distributed
under the terms of the Creative Commons Attribution License (CC BY). The use,
distribution or reproduction in other forums is permitted, provided the
original author(s) and the copyright owner(s) are credited and that the
original publication in this journal is cited, in accordance with accepted
academic practice." The article pages on frontiersin.org (re-read 7 October
2026) carry the same text and link "CC BY" to
<https://creativecommons.org/licenses/by/4.0/>. Sources for Kovan's
solver-pattern concepts (OUTRAM PARK #760). The credit asked for is the
citation below; the files are unmodified.

| File | Article | Copyright line (PDF page 1) | SHA-256 |
|---|---|---|---|
| `cc-by/kim2022-fenrg-859622-idtmc-depletion.pdf` | I. Kim, I. Kim, Y. Kim, "An iDTMC-based Monte Carlo depletion of a 3D SMR with intra-pin flux renormalization", *Front. Energy Res.* 10:859622, published 10 August 2022, <https://doi.org/10.3389/fenrg.2022.859622> | "© 2022 Kim, Kim and Kim." | `85060b93a1cfaf1ac050f73a2e38d52acb8d398bf4923811cdb7e791aba5c991` |
| `cc-by/zhang2023-fenrg-1101050-parallel-jfnk-sn.pdf` | Y. Zhang, X. Zhou, "Parallel Jacobian-free Newton Krylov discrete ordinates method for pin-by-pin neutron transport models", *Front. Energy Res.* 10:1101050, published 18 January 2023, <https://doi.org/10.3389/fenrg.2022.1101050> | "© 2023 Zhang and Zhou." | `c19d82e876878c3cca92d9b47b2749006571ef1f69679ac197554fd2c134847c` |

## 3. U.S. EPA documents

The U.S. Environmental Protection Agency's disclaimers page
(<https://www.epa.gov/web-policies-and-procedures/epa-disclaimers>, accessed
28 September 2026), section "Copyright Status", states, verbatim:

> The U.S. Government retains a nonexclusive, royalty-free license to publish
> or reproduce these documents, or allow others to do so, for U.S. Government
> purposes. These documents may be freely distributed and used for
> non-commercial, scientific and educational purposes. Commercial use of the
> documents available from the EPA websites may be protected under the U.S.
> and Foreign Copyright Laws. Individual documents on the EPA website may have
> different copyright conditions, and that will be noted in those documents.

Neither report below notes any copyright condition of its own: the full text
of each was searched for a copyright notice, "public domain" or a permission
statement, and neither carries one. Each carries only the standard
U.S.-Government sponsorship disclaimer ("This report was prepared as an account
of work sponsored by an agency of the United States Government. Neither the
United States Government nor any agency thereof, nor any of their employees,
makes any warranty ..."). They are therefore included on the basis of the EPA
statement above, as EPA publications, **for non-commercial, scientific and
educational use**. This is narrower than grounds 1 and 2: anyone reusing these
two files commercially must satisfy themselves of the copyright position,
because the EPA statement does not grant it.

Both reports were prepared jointly by EPA staff and Oak Ridge National
Laboratory (a U.S. Department of Energy contractor-operated laboratory), so
they are not wholly works of federal employees and are not claimed here as
public domain under 17 U.S.C. § 105. FGR-11's own front matter reads "This
report was prepared by the Office of Radiation Programs, U.S. Environmental
Protection Agency, Washington, DC 20460 and by the Oak Ridge National
Laboratory, Oak Ridge, Tennessee 37831, operated by Martin Marietta Energy
Systems, Inc. for the U.S. Department of Energy, Contract No.
DE-AC05-84OR21400". FGR-13's reads "This report was prepared for the Office of
Radiation and Indoor Air, U.S. Environmental Protection Agency, Washington, DC
20460 by Oak Ridge National Laboratory, Oak Ridge, Tennessee 37831", and states
that its preparation "was funded by the U.S. Environmental Protection Agency,
the U.S. Department of Energy (DOE), and the U.S. Nuclear Regulatory Commission
(NRC)". Neither title page assigns individual authors to the two affiliations;
the one affiliation a report states for a named author is FGR-11's preface
naming Allan C.B. Richardson as "Chief, Guides and Criteria Branch, ANR-460,
U.S. Environmental Protection Agency".

Each file is byte-identical (SHA-256 checked, 28 September 2026) to the copy at
the EPA URL given below.

| File | Document | Prepared by | Published | EPA source |
|---|---|---|---|---|
| `epa/fgr-11-epa-520-1-88-020.pdf` | Federal Guidance Report No. 11, EPA-520/1-88-020, *Limiting Values of Radionuclide Intake and Air Concentration and Dose Conversion Factors for Inhalation, Submersion, and Ingestion* | K.F. Eckerman, A.B. Wolbarst, A.C.B. Richardson; Oak Ridge National Laboratory and Office of Radiation Programs, U.S. EPA | September 1988 | <https://www.epa.gov/sites/default/files/2015-05/documents/520-1-88-020.pdf> |
| `epa/fgr-13-epa-402-r-99-001.pdf` | Federal Guidance Report No. 13, EPA 402-R-99-001, *Cancer Risk Coefficients for Environmental Exposure to Radionuclides* | K.F. Eckerman, R.W. Leggett, C.B. Nelson, J.S. Puskin, A.C.B. Richardson; Oak Ridge National Laboratory and Office of Radiation and Indoor Air, U.S. EPA | September 1999 | <https://www.epa.gov/system/files/documents/2025-03/402-r-99-001_508-d_2.pdf> |
| `epa/fgr-15-epa-402-r-25-001.pdf` | Federal Guidance Report No. 15, EPA 402-R-25-001, *External Exposure to Radionuclides in Air, Water and Soil*, revised July 2025 | M.B. Bellamy, C.E. Samuels, S.A. Dewji, R.W. Leggett, M. Hiller, K. Veinot, R.P. Manger, J.C. Ryman, C.E. Easterly, N.E. Hertel, D.J. Stewart, K.F. Eckerman; Oak Ridge National Laboratory, for the Office of Radiation and Indoor Air, U.S. EPA | July 2025 | <https://www.epa.gov/system/files/documents/2025-07/fgr15_rev2025july_final_508.pdf> |

All three URLs were accessed 28 September 2026 from the EPA's Federal Guidance
page (<https://www.epa.gov/radiation/federal-guidance-radiation-protection>).
The FGR-13 copy is EPA's 2025 re-issue of the 1999 report, with an EPA
accessibility statement added in front of the original cover; the FGR-11 copy
has an EPA contact disclaimer stamped on its cover. Neither alters the report.

FGR-15 is the **July 2025 revision** (EPA 402-R-25-001, SHA-256
`a91cda89…21ae`). EPA's FGR-15 page states that the earlier versions
(EPA 402-R-18-001 and 402-R-19-002) "contained errors in the dose
coefficient tables" and "should be discarded", so the 2019 copy is
deliberately not held here. Its front matter carries no copyright notice;
the basis is the same EPA statement as for FGR-11 and FGR-13.

## 4. U.S. Department of Energy reports, distribution unlimited

Added 6 October 2026 at the owner's direction: a DOE report (including one
written by a DOE national laboratory's contractor) belongs here when the report
itself is marked for unlimited distribution. A contractor-written report is not
a work of the U.S. Government itself, so the basis is the report's own marking,
not 17 U.S.C. § 105; the marking is quoted, with where it is, for each file.
The same ground is used in the owner's open corpus
(`../theodore-open-corpus/README.md`, section 4).

**Extended 7 October 2026 (owner: "it is standard corpus, since it is easy
to distribute"):** ground 4 also covers **documents written by DOE itself**,
such as DOE directives and guides, whose cover marks a distribution channel
rather than "unlimited distribution". They are U.S. Government Works (17
U.S.C. § 105), and DOE's Copyright, Restrictions and Permissions Notice
(<https://www.energy.gov/web-policies>, accessed 7 October 2026) states:
"Government information at DOE websites is in the public domain. Public domain
information may be freely distributed and copied, but it is requested that in
any subsequent use the Department of Energy be given appropriate
acknowledgement." Each such document is credited to the U.S. Department of
Energy below.

| File | Document | Basis |
|---|---|---|
| `us-doe/ornl-tm-2018-976-msr-nureg0800-gap-analysis.pdf` | R.J. Belles, G.F. Flanagan, *Regulatory Gap Analysis of Select NUREG-0800 Chapters for Applicability to Molten Salt Reactors*, ORNL/TM-2018/976, Oak Ridge National Laboratory (managed by UT-Battelle, LLC) for the U.S. Department of Energy, October 2018. Source of the MSR extension of Kovan's concept tree (OUTRAM PARK #726) | The cover states "Approved for public release. Distribution is unlimited." (checked 6 October 2026) **Where:** PDF page 1 (the cover). |
| `us-doe/doe-std-1172-2003-safety-software-qa-faqs.pdf` | DOE-STD-1172-2003, *Safety Software Quality Assurance Functional Area Qualification Standard*, U.S. Department of Energy, December 2003 (23 pp.). A DOE technical standard. Software QA source for Kovan's concept tree (OUTRAM PARK #760). Superseded by DOE-STD-1172-2011, not yet filed | The front matter states "DISTRIBUTION STATEMENT A. Approved for public release; distribution is unlimited." (checked 7 October 2026) **Where:** PDF page 1, below the title block. |
| `us-doe/doe-g-414-1-4-2005-safety-software-guide.pdf` | DOE G 414.1-4, *Safety Software Guide for Use with 10 CFR 830 Subpart A, Quality Assurance Requirements, and DOE O 414.1C, Quality Assurance*, U.S. Department of Energy (initiated by the Office of Environment, Safety and Health); approved 17 June 2005, certified 3 November 2010 (103 pp.). Written by DOE itself; still listed among DOE's quality assurance directives on 7 October 2026 (its parent order DOE O 414.1C is now DOE O 414.1D Chg 1). Software QA source for Kovan's concept tree (OUTRAM PARK #760): software types, grading levels A/B/C, the ten SQA work activities. Copy from energy.gov (also in NRC ADAMS as ML12179A228), SHA-256 `8330c44a…` | U.S. Government Work (17 U.S.C. § 105) and DOE's public-domain notice above (extended ground 4). The cover gives only "DISTRIBUTION: http://www.directives.doe.gov" (PDF page 1, bottom left) and carries no copyright notice (all 103 pages searched, 7 October 2026). |

**Added 7 October 2026** (OUTRAM PARK #760): bedrock documents for IAEA
issues 10, 16 and 18, and three solver-pattern sources. Each marking was
re-read from the file that day; every file's full text was searched for a
copyright notice and none carries one, except as noted for SAND2011-2195.
"Byte-identical" means the file was re-fetched from the URL given on
7 October 2026 and its SHA-256 matched.

| File | Document | Basis | SHA-256 |
|---|---|---|---|
| `us-doe/doe-hdbk-1019-1-93-nuclear-physics-reactor-theory.pdf` | DOE-HDBK-1019/1-93, *DOE Fundamentals Handbook: Nuclear Physics and Reactor Theory*, Volume 1 of 2, U.S. Department of Energy, January 1993. IAEA issue 10, human resource development. <https://www.energy.gov/sites/default/files/2026-04/DOE-HDBK-1019-93_VOL1.pdf> (byte-identical) | The cover states "Distribution Statement A. Approved for public release; distribution is unlimited." **Where:** PDF page 1. | `7acb55d13898930bb18daee31d2ef02df422597af00b58cca350347460b56796` |
| `us-doe/doe-hdbk-1019-2-93-nuclear-physics-reactor-theory.pdf` | DOE-HDBK-1019/2-93, the same handbook, Volume 2 of 2, January 1993. <https://www.energy.gov/sites/default/files/2026-04/DOE-HDBK-1019-93_VOL2.pdf> (fetched 7 October 2026) | As Volume 1. **Where:** PDF page 1. | `78ca0f779791b9dd6f0f30850009a5e11bd155faff6b69f48739216453d59fda` |
| `us-doe/doe-hdbk-1012-1-92-thermo-heat-transfer-fluid-flow.pdf` | DOE-HDBK-1012/1-92, *DOE Fundamentals Handbook: Thermodynamics, Heat Transfer, and Fluid Flow*, Volume 1 of 3, U.S. Department of Energy, June 1992. IAEA issue 10. <https://www.energy.gov/sites/default/files/2026-04/DOE-HDBK-1012-92_VOL1.pdf> (byte-identical) | The cover states "Distribution Statement A. Approved for public release; distribution is unlimited." **Where:** PDF page 1. | `3c4ef4ad700cfd64444677404956ec2237bb5e24e31f7e591b1767526ec0b2c9` |
| `us-doe/doe-hdbk-1012-2-92-thermo-heat-transfer-fluid-flow.pdf` | DOE-HDBK-1012/2-92, the same handbook, Volume 2 of 3, June 1992. <https://www.energy.gov/sites/default/files/2026-04/DOE-HDBK-1012-92_VOL2.pdf> (byte-identical) | As Volume 1. **Where:** PDF page 1. | `1261936f3985477e85c694f27dd8ffd56ca95130e44f3f1bbc64d30de540e2b2` |
| `us-doe/doe-hdbk-1012-3-92-thermo-heat-transfer-fluid-flow.pdf` | DOE-HDBK-1012/3-92, the same handbook, Volume 3 of 3, June 1992. <https://www.energy.gov/sites/default/files/2026-04/DOE-HDBK-1012-92_VOL3.pdf> (fetched 7 October 2026) | As Volume 1. **Where:** PDF page 1. | `0135196976fc613fa7e0129776e9fd74ead03e6cc3a37bab65803d5484140974` |
| `us-doe/nfwg-2020-restoring-competitive-nuclear-advantage.pdf` | *Restoring America's Competitive Nuclear Energy Advantage: A strategy to assure U.S. national security*, the report of the United States Nuclear Fuel Working Group (established by Presidential Memorandum of July 12, 2019), issued by the U.S. Department of Energy (DOE seal and name on the cover), April 2020 (the report prints no issue date; this is the PDF's creation date, and DOE's file path is `2020/04`), 32 pp. IAEA issue 16, nuclear fuel cycle. <https://www.energy.gov/sites/default/files/2020/04/f74/Restoring%20America%27s%20Competitive%20Nuclear%20Advantage_1.pdf> (byte-identical), from <https://www.energy.gov/downloads/restoring-americas-competitive-nuclear-energy-advantage> | U.S. Government Work (17 U.S.C. § 105), issued by DOE itself, and DOE's public-domain notice above (extended ground 4). It carries no copyright notice and no distribution marking (all 32 pages searched). | `1ab13bbe20dae2fb515c53ff473468a1379c8adece06b2a8f9de11648a56e7df` |
| `us-doe/ornl-tm-2020-1522-ies-eastman-kingsport.pdf` | M.S. Greenwood, A. Guler Yigitoglu, J.D. Rader, W. Tharp, M. Poore, R. Belles, B. Zhang, R. Cumberland, M. Muhlheim, *Integrated Energy System Investigation for the Eastman Chemical Company Kingsport, Tennessee, Facility*, ORNL/TM-2020/1522 (CRADA final report, CRADA/NFE-19-07651), Oak Ridge National Laboratory (UT-Battelle, LLC) for the U.S. Department of Energy, May 2020, 110 pp. IAEA issue 18, industrial involvement. <https://info.ornl.gov/sites/publications/Files/Pub139613.pdf> (byte-identical) | The cover states "Unlimited Release" (owner, 7 October 2026: ORNL's "Unlimited Release" is accepted as an unlimited-distribution marking). **Where:** PDF page 1. | `0a769d3a8af103e206407d964fc00f3a935b2cfde01bd746ec1aa2ab82784680` |
| `us-doe/ornl-tm-2014-88-smahtr-carbonate-cycle.pdf` | D.E. Holcomb, D. Ilas (ORNL), B. Middleton, M. Arrieta (Sandia National Laboratories), *Small, Modular Advanced High-Temperature Reactor–Carbonate Thermochemical Cycle*, ORNL/TM-2014/88, Oak Ridge National Laboratory (UT-Battelle, LLC) for the U.S. Department of Energy, March 2014, 50 pp. IAEA issue 18. <https://info.ornl.gov/sites/publications/Files/Pub48861.pdf> (byte-identical) | The cover states "Approved for public release; distribution is unlimited." **Where:** PDF page 1. | `c938120bd51b8ef2a7ea319b9026763ebf9fa5dfdd57689f898a0cc6e83effe7` |
| `us-doe/sand2011-2195-lime-coupling-theory-manual.pdf` | R. Pawlowski, R. Bartlett, N. Belcourt, R. Hooper, R. Schmidt, *A Theory Manual for Multi-physics Code Coupling in LIME*, Version 1.0, SAND2011-2195, Sandia National Laboratories (Sandia Corporation) for the U.S. Department of Energy's National Nuclear Security Administration, printed March 2011, 42 pp. Source for Picard and Newton/JFNK coupling. <https://www.osti.gov/servlets/purl/1011710> (OSTI ID 1011710, byte-identical) | The cover states "Unlimited Release" and "Approved for public release; further dissemination unlimited." **Where:** PDF page 1. **Third-party content:** Figure 3.1(b) (PDF page 26) is "reprinted with permission from [8]"; that figure keeps its holder's copyright. | `4407d75bd97c7980ffccc161835f7b1f2597851bfa4305f1acad43386f7dfd81` |
| `us-doe/la-ur-06-7094-brown-mc-eigenvalue.pdf` | F. Brown, *Monte Carlo Eigenvalue Calculations*, LA-UR-06-7094, Los Alamos National Laboratory (Los Alamos National Security, LLC, for NNSA/DOE), 2006; lecture slides ("Intended for: Monte Carlo lectures"), 49 pp. Source for power iteration. <https://mcnp.lanl.gov/pdf_files/TechReport_2006_LANL_LA-UR-06-7094_Brown.pdf> (byte-identical) | The LANL release form states "Approved for public release; distribution is unlimited." **Where:** PDF page 1. | `1402cd5b9226c1dffc1788b8c304445221975bd6c226902186a9d4f4af9e6cfa` |
| `us-doe/la-ur-09-02377-brown-mc-criticality-review.pdf` | F.B. Brown, *A Review of Monte Carlo Criticality Calculations - Convergence, Bias, Statistics*, LA-UR-09-02377, Los Alamos National Laboratory, 2009; slides for the American Nuclear Society Mathematics & Computation Topical Meeting, Saratoga, NY, May 3-7, 2009, 47 pp. Source for power iteration. <https://mcnp.lanl.gov/pdf_files/TechReport_2009_LANL_LA-UR-09-02377_Brown.pdf> (byte-identical) | The LANL release form states "Approved for public release; distribution is unlimited." **Where:** PDF page 1. | `847feaadf7ca7044c8c964f03a84eba7928d5ef9c12a0b6e89657c89c77a50e3` |

The SAND, LANL and ORNL reports are contractor-written, so their basis is
the marking alone, not 17 U.S.C. § 105. The two LANL items are slide decks,
each released as a LANL report under its LA-UR number.

## 5. European Commission documents, reuse authorised

Added 6 October 2026: a European Commission (Joint Research Centre) report
belongs here when its own legal notice authorises reuse. The basis is that
notice, quoted with where it is, under Decision 2011/833/EU on the reuse of
Commission documents. The source is acknowledged as each notice requires.
Moved here from `../theodore-open-corpus/jrc/` on 6 October 2026 at the owner's
direction, so Kovan's concept tree can cite it (OUTRAM PARK #724: alternate
power cycles).

| File | Document | Basis |
|---|---|---|
| `eu-jrc/kjna28712enn.pdf` | K. Kugeler, H. Nabielek, D. Buckthorpe, *The High Temperature Gas-cooled Reactor: Safety considerations of the (V)HTR-Modul*, EUR 28712 EN, Publications Office of the European Union, 2017, <https://doi.org/10.2760/270321> | The report states: "Reuse is authorised provided the source is acknowledged. The reuse policy of European Commission documents is regulated by Decision 2011/833/EU (OJ L 330, 14.12.2011, p. 39)." Acknowledged here. **Where:** PDF page 2, the legal notice. |

## 6. U.S. federal regulations (Code of Federal Regulations)

Added 6 October 2026. Federal regulations are U.S. Government works with no
copyright (17 U.S.C. § 105). These copies are printouts of the **eCFR**
(<https://www.ecfr.gov>), which states on every page: "This content is from the
eCFR and is authoritative but unofficial." The official text is the annual
CFR edition and the Federal Register. Each file is the regulation as it stood
on the date in its name.

| File | Regulation | Source note (as printed) | As of |
|---|---|---|---|
| `cfr/10cfr50-ecfr-2026-10-02.pdf` | 10 CFR Part 50, *Domestic Licensing of Production and Utilization Facilities* (incl. Appendix A, General Design Criteria; Appendix B, Quality Assurance Criteria), 326 pp. | "Source: 21 FR 355, Jan. 19, 1956, unless otherwise noted." | 2 October 2026 |
| `cfr/10cfr52-ecfr-2026-10-02.pdf` | 10 CFR Part 52, *Licenses, Certifications, and Approvals for Nuclear Power Plants*, 153 pp. | "Source: 72 FR 49517, Aug. 28, 2007, unless otherwise noted." | 2 October 2026 |
| `cfr/10cfr53-ecfr-2026-10-02.pdf` | 10 CFR Part 53, *Risk-Informed, Technology-Inclusive Regulatory Framework for Commercial Nuclear Plants*, 166 pp. | "Source: 91 FR 15794, Mar. 30, 2026, unless otherwise noted." | 2 October 2026 |

## Provenance

The files were collected by the repository owner and added on 22 September
2026, except the three EPA reports, added on 28 September 2026, and the
documents marked "Added 6 October 2026" or "Added 7 October 2026" in their
sections (those of 7 October were found by search agents for OUTRAM PARK #760
and each re-verified from the file, or its official landing page, before
filing). Bibliographic details were read from each document's own title and
front-matter pages; licence details from the sources cited in each section.
Nothing here is a restricted or proprietary document; anything that is must
not be added to this repository.


## 7. The rule for this corpus, and what moved out (2026-10-07)

**Rule (owner, 7 October 2026):** a document belongs here only if it is
**explicitly available for redistribution**: by its own marking, by a statement
of its issuer that covers it, or by being a work of the U.S. Government
itself. "As long as it is available for redistribution, it is safe in standard
corpus." A report written by a contractor qualifies only through such an
explicit statement: the ORNL report in section 4 ("Approved for public
release. Distribution is unlimited.") and the EPA reports in section 3 (EPA's
"may be freely distributed ... for non-commercial, scientific and educational
purposes") stay on that basis.

The two NUREG/CR reports below carry no redistribution statement of their own
(only the NRC's notice of where copies can be obtained), and the NRC's site
disclaimer, written for the NRC's own website and publications, does not
plainly cover contractor-written reports. They were therefore moved to the
owner's private corpus, where Kovan cites them without redistributing them.
They remain in this repository's git history, and both are publicly available
from the NRC.

| Former file | Document | Public source |
|---|---|---|
| `nrc/ML12338A215.pdf` | NUREG/CR-7041 (ORNL/TM-2011/21), *SCALE/TRITON Primer* (ORNL for the NRC) | <https://www.nrc.gov/docs/ML1233/ML12338A215.pdf> |
| `nrc/ML22063A060.pdf` | NUREG/CR-7289 (ORNL/TM-2021/2002), *Nuclear Data Assessment for Advanced Reactors* (ORNL for the NRC) | <https://www.nrc.gov/docs/ML2206/ML22063A060.pdf> |

## 8. Permissive open-source licence (BSD-style)

Added 7 October 2026 at the owner's direction (OUTRAM PARK GitHub #760,
question 8: "NJOY may not apply to everyone, but it is the bedrock of nuclear
science"). A document belongs here when its copyright holder publishes it
under a permissive open-source licence whose text grants redistribution. The
basis is that licence, quoted with where it is; the licence's conditions are
met by keeping its full text beside the file.

The NJOY2016 manual is the work of a contractor (Los Alamos National
Security, LLC, for the U.S. Department of Energy), so it is not claimed as a
U.S. Government Work under 17 U.S.C. § 105, and it carries no "distribution
unlimited" marking (ground 4). Its basis is the licence alone. The manual's
own repository, <https://github.com/njoy/NJOY2016-manual> (branch `master`,
commit `9a2951f48b07244ae29123b5f425e4ae49e7497a`, 2 March 2022; checked
7 October 2026 through the GitHub API), ships a `LICENSE` file that reads,
in part:

> Copyright (c) 2016, Los Alamos National Security, LLC
> All rights reserved.
> [...]
> Additionally, redistribution and use in source and binary forms, with or
> without modification, are permitted provided that the following conditions
> are met:
> 1. Redistributions of source code must retain the above copyright notice,
> this list of conditions and the following disclaimer.
> 2. Redistributions in binary form must reproduce the above copyright notice,
> this list of conditions and the following disclaimer in the documentation
> and/or other materials provided with the distribution.
> 3. Neither the name of Los Alamos National Security, LLC, Los Alamos
> National Laboratory, LANL, the U.S. Government, nor the names of its
> contributors may be used to endorse or promote products derived from this
> software without specific prior written permission.

The full text is kept, byte for byte, as
[`lanl/LICENSE-NJOY2016-manual.txt`](lanl/LICENSE-NJOY2016-manual.txt) (its
Git blob `0604264…` equals the repository's `LICENSE` at that commit), which
satisfies condition 2 for this copy. The same notice is printed in the manual
itself, on PDF page 2 ("Copyright Notice: Copyright 2016. Los Alamos National
Security, LLC …", followed by the three conditions). Its inclusion here
implies no endorsement by LANS, LANL or the U.S. Government (condition 3).

| File | Document | Basis |
|---|---|---|
| `lanl/2022laur1720093.pdf` | R.E. MacFarlane (original author), with D.W. Muir, R.M. Boicourt, A.C. Kahler, J.L. Conlin, W. Haeck (contributing authors); A.C. Kahler (current editor), *The NJOY Nuclear Data Processing System, Version 2016*, LA-UR-17-20093, Los Alamos National Laboratory. Original issue 19 December 2016; this copy is "Updated for NJOY2016.53, November 7, 2019" (title page), 816 pp. Source: <https://github.com/njoy/NJOY2016-manual> | The licence quoted above. **Where:** the repository's `LICENSE` (commit `9a2951f`), and PDF page 2 of the manual. **Edition:** byte-identical to the repository's `njoy16.pdf` at commit `9a2951f` (same Git blob `7660ec9…`, 4 531 624 bytes; SHA-256 `4e32e95a…9f40`; checked 7 October 2026). That commit is the latest on `master` as of that date, and the last to change `njoy16.pdf` was `4ae16cc` (2 March 2022), so no newer edition of the PDF is published there. Moved here from `../theodore-open-corpus/` (its ground 6) on 7 October 2026. |

### Project documentation under its software licence (added 7 October 2026)

Ground 7 extended by the owner on 7 October 2026 (OUTRAM PARK #760: "project
documentation under a software licence covering it (OpenMC docs, MIT; MOOSE
docs, LGPL 2.1)"). These are documentation **source files** from the
projects' own Git repositories, stored as they are (not rendered to PDF),
each pinned to a commit, with the repository's licence files kept beside
them byte for byte. Sources for Kovan's solver-pattern concepts. Fetched
7 October 2026 from `raw.githubusercontent.com` at the commits given; the
commit is the head of the branch named on that day (read through the GitHub
API).

**OpenMC** (<https://github.com/openmc-dev/openmc>, branch `develop`, commit
`a5bc348a6ca2d2de49c8325dd3cc220e9fc55f83`, 7 October 2026). Its `LICENSE`
(kept as [`openmc-docs/LICENSE`](openmc-docs/LICENSE)) is the MIT licence and
names the documentation explicitly:

> Copyright (c) 2011-2026 Massachusetts Institute of Technology, UChicago
> Argonne LLC, and OpenMC contributors
>
> Permission is hereby granted, free of charge, to any person obtaining a copy
> of this software and associated documentation files (the "Software"), to
> deal in the Software without restriction, including without limitation the
> rights to use, copy, modify, merge, publish, distribute, sublicense, and/or
> sell copies of the Software, [...] subject to the following conditions:
> The above copyright notice and this permission notice shall be included in
> all copies or substantial portions of the Software.

**MOOSE** (<https://github.com/idaholab/moose>, branch `master`, commit
`21efd282277eb517ee85470371a037b89141e685`, 7 October 2026). Its `LICENSE`
(kept as [`moose-docs/LICENSE`](moose-docs/LICENSE)) is the GNU Lesser
General Public License, Version 2.1, whose section 1 reads "You may copy
and distribute verbatim copies of the Library's complete source code as you
receive it, in any medium, provided that you conspicuously and appropriately
publish on each copy an appropriate copyright notice and disclaimer of
warranty; keep intact all the notices that refer to this License and to the
absence of any warranty; and distribute a copy of this License along with the
Library." (The pages copied here are parts of that repository, not the whole
of it; the owner's decision is that the repository's licence covers its
documentation.) Its `COPYRIGHT` (kept as [`moose-docs/COPYRIGHT`](moose-docs/COPYRIGHT))
names the holders, beginning "© 2010-2024 Battelle Energy Alliance, LLC ALL
RIGHTS RESERVED ... Prepared by Battelle Energy Alliance, LLC Under Contract
No. DE-AC07-05ID14517 With the U. S. Department of Energy". The two pages are
copied verbatim and unmodified, with both files beside them.

| File | Document | Upstream path at the pinned commit | SHA-256 |
|---|---|---|---|
| `openmc-docs/depletion.rst` | OpenMC documentation, Methods, "Depletion" (incl. "Numerical Integration": predictor and CE/CM; "Matrix Exponential": CRAM) | `docs/source/methods/depletion.rst` (last changed in `ce78bdc`, 25 July 2026) | `11380360b3e96dfbbff58b72d24370965c13a21e7fc5a92b276d0b2b2794fe8c` |
| `openmc-docs/eigenvalue.rst` | OpenMC documentation, Methods, "Eigenvalue Calculations" (incl. "Method of Successive Generations", "Source Convergence Issues") | `docs/source/methods/eigenvalue.rst` (last changed in `a8171cb`, 27 June 2024) | `cb1f720af9b8298318ccfdcf41f9f4dd14f439c04b5f3222d378c603752c4782` |
| `openmc-docs/LICENSE` | OpenMC's MIT licence | `LICENSE` | `5f5405845324a4d509508bc260617df26e855d8cb6a6841b8b1437eca17e4b05` |
| `moose-docs/SIMPLE.md` | MOOSE Navier–Stokes module documentation, "SIMPLE" executioner (segregated pressure–velocity solve) | `modules/navier_stokes/doc/content/source/executioners/SIMPLE.md` (last changed in `0bdea46`, 17 August 2026) | `f064d252cb5ea2fe20e2b23fdcae486d2c5674d02647467be920226d3fb6e590` |
| `moose-docs/PIMPLE.md` | MOOSE Navier–Stokes module documentation, "PIMPLE" executioner (SIMPLE combined with PISO) | `modules/navier_stokes/doc/content/source/executioners/PIMPLE.md` (last changed in `6f79819`, 21 September 2026) | `340e33ede08fe75436e51bc2f97201b4d81ed17dc1b9cad1114d0712b69f588a` |
| `moose-docs/LICENSE` | MOOSE's LGPL 2.1 text | `LICENSE` | `dc626520dcd53a22f727af3ee42c770e56c97a64fe3adb063799d8ab032fe551` |
| `moose-docs/COPYRIGHT` | MOOSE's copyright notices | `COPYRIGHT` | `00c942e96f0c7dd5cb843e6e866a5330120bd896c5ee3d195bc3527d3e296288` |

## 9. Other U.S. Government works that state they are not copyrighted

Added 7 October 2026 (ground 8): reports of U.S. Government agencies other
than the NRC and DOE, here the Congressional Research Service (CRS, part of
the Library of Congress) and the Government Accountability Office (GAO), each
of which prints on the document itself that it is a work of the United States
Government, not subject to copyright, and may be reproduced and distributed
in its entirety. Bedrock documents for IAEA issues 1 and 5 (OUTRAM PARK
#760). Both notices add that a report may include copyrighted images or
material from a third party: any such item keeps its holder's copyright, and
these files are redistributed only whole and unmodified.

The CRS notice, verbatim (last page of each CRS report):

> CRS Reports, as a work of the United States Government, are not subject to
> copyright protection in the United States. Any CRS Report may be
> reproduced and distributed in its entirety without permission from CRS.
> However, as a CRS Report may include copyrighted images or material from a
> third party, you may need to obtain the permission of the copyright holder
> if you wish to copy or otherwise use copyrighted material.

The GAO notice, verbatim (PDF page 4):

> This is a work of the U.S. government and is not subject to copyright
> protection in the United States. The published product may be reproduced
> and distributed in its entirety without further permission from GAO.
> However, because this work may contain copyrighted images or other
> material, permission from the copyright holder may be necessary if you wish
> to reproduce this material separately.

| File | Document | Where the notice is | SHA-256 |
|---|---|---|---|
| `us-congress/crs-r42853-2024-12-03.pdf` | M. Holt (Specialist in Energy Policy), *Nuclear Energy: Overview of Congressional Issues*, CRS Report R42853, updated December 3, 2024 (version 38), 46 pp. IAEA issue 1, national position. CRS reports are published at <https://crsreports.congress.gov> (printed on the report) | PDF page 46 | `7cee2b772fe2898d528903e343965b67d1ce9a11098f6359e6b5f3397a39819f` |
| `us-congress/crs-if10821-2025-02-28.pdf` | M. Holt (Specialist in Energy Policy), *Price-Anderson Act: Nuclear Power Industry Liability Limits and Compensation to the Public After Radioactive Releases*, CRS In Focus IF10821, updated February 28, 2025 (version 6), 3 pp. IAEA issue 5, legal framework (civil liability) | PDF page 3 | `b5f7b46a6238775d5f715e2a65444a61afafe62bccd8edbdd70345895403ab13` |
| `us-congress/gao-15-652.pdf` | U.S. Government Accountability Office, Center for Science, Technology, and Engineering, *Technology Assessment: Nuclear Reactors: Status and challenges in development and deployment of new commercial concepts*, GAO-15-652, report to the Ranking Member, Subcommittee on Energy and Water Development, Committee on Appropriations, U.S. Senate, July 2015, 46 pp. IAEA issue 1. GAO's website is www.gao.gov (printed on the report) | PDF page 4 | `146bb2aa4cdb5d4d582f47840704f31142260e056f38d9dae49ad0cd76aa277f` |

The copies could not be re-fetched for a byte comparison on 7 October 2026
(crsreports.congress.gov answered an automated request with a challenge page,
and www.gao.gov refused the TLS connection); the basis rests on the notices
printed in the files themselves, read that day.

## 10. Creative Commons licences other than CC BY

Added 7 October 2026 (ground 9; owner on OUTRAM PARK #760: "CC BY-NC-ND
qualifies"). A document belongs here when its own page or its official
landing page states one of CC BY-SA, CC BY-NC or CC BY-NC-ND. The licence is
quoted with where it is. These licences permit redistribution of verbatim
copies with attribution (the NC licences for non-commercial use only; the ND
licence forbids distributing modified versions, so these files are kept
unmodified). The attribution is the citation below. Sources for Kovan's
solver-pattern concepts.

| File | Document | Licence and where it is | SHA-256 |
|---|---|---|---|
| `cc-by-sa/arxiv-2306.01924v2-multiregionfoam.pdf` | H. Alkafri, C. Habes, M.E. Fadeli, S. Hess, S.B. Beale, S. Zhang, H. Jasak, H. Marschall, "multiRegionFoam -- A Unified Multiphysics Framework for Multi-Region Coupled Continuum-Physical Problems", arXiv:2306.01924v2 [physics.comp-ph], 9 July 2023 (v1 2 June 2023), 36 pp., <https://arxiv.org/abs/2306.01924v2> | **CC BY-SA 4.0**: the arXiv record (re-read 7 October 2026) links its licence to <http://creativecommons.org/licenses/by-sa/4.0/>. The PDF does not restate it. Byte-identical to <https://arxiv.org/pdf/2306.01924v2> (re-fetched that day) | `15d348cb1358c1cecf1a1f373a132f875b3ff9f790a941b219262c7045bf69e0` |
| `cc-by-nc-nd/arxiv-2301.00289v3-wang-picard-stability.pdf` | D. Wang (Nuclear Engineering Program, The Ohio State University), "Stability Analysis of Picard Iteration for Coupled Neutronics/Thermal-Hydraulics Simulations", arXiv:2301.00289v3, 4 March 2023 (v1 31 December 2022), 4 pp., <https://arxiv.org/abs/2301.00289v3> | **CC BY-NC-ND 4.0**: the arXiv record of v3 (re-read 7 October 2026) links its licence to <http://creativecommons.org/licenses/by-nc-nd/4.0/>. The PDF does not restate it. Byte-identical to <https://arxiv.org/pdf/2301.00289v3> (fetched that day) | `0ad6c6a34a7f044b8b77d6d375eaeda7f197d8e31c8442d04cc318cc6653dd3a` |
| `cc-by-nc-nd/cosgrove2020-pc-stability-cam-309913.pdf` | P. Cosgrove, E. Shwageraus, G.T. Parks (Department of Engineering, University of Cambridge), "Stability analysis of predictor-corrector schemes for coupling neutronics and depletion", accepted manuscript of the article in *Annals of Nuclear Energy* (Elsevier, ISSN 0306-4549, publisher DOI <https://doi.org/10.1016/j.anucene.2020.107781>), deposited in the University of Cambridge repository, <https://www.repository.cam.ac.uk/handle/1810/309913>, DOI <https://doi.org/10.17863/CAM.57013>, publication date 15 December 2020 as recorded there, 20 pp. | **CC BY-NC-ND 4.0**: the repository page (re-read 7 October 2026) states, under "Rights and licensing": "Except where otherwised noted, this item's license is described as Attribution-NonCommercial-NoDerivatives 4.0 International" (linked to <https://creativecommons.org/licenses/by-nc-nd/4.0/>). Byte-identical to the repository's download of the file (re-fetched that day) | `181efc228fdd96bbb454ab507dde88ace9811d5ead69efe8fe2f9a405e5ef51b` |
