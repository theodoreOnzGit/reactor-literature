# Kovan standard open corpus

Source documents for **Kovan's built-in nuclear-engineering corpus**. Kovan
(part of [OUTRAM PARK](https://github.com/theodoreOnzGit/outram-park-backend))
compiles the metadata of exactly these documents (titles, authors, topics)
into its binary (`crates/kovan/src/corpus.rs`); the PDFs live here so they are
never shipped in the Kovan crate. Only documents in this folder are
hardcoded into Kovan. The owner's other open literature is in
[`../theodore-open-corpus/`](../theodore-open-corpus/).

Every document here is redistributable, on one of six grounds:

1. **U.S. NRC documents: open access, U.S. Government Work.**
2. **Open access under the Creative Commons Attribution licence (CC BY 4.0).**
3. **U.S. EPA documents: free distribution for non-commercial, scientific and
   educational purposes** (added 28 September 2026; see section 3 for the
   commercial-use caveat).
4. **U.S. Department of Energy reports marked for unlimited distribution**
   (added 6 October 2026, owner's direction; see section 4).
5. **European Commission documents whose reuse is authorised with
   acknowledgement** (added 6 October 2026; see section 5).
6. **U.S. federal regulations: the Code of Federal Regulations** (added
   6 October 2026; see section 6).

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
| `nrc/ML12338A215.pdf` | NUREG/CR-7041 (ORNL/TM-2011/21), *SCALE/TRITON Primer: A Primer for Light Water Reactor Lattice Physics Calculations* | B.J. Ade, Oak Ridge National Laboratory, for the U.S. NRC | November 2012 |
| `nrc/ML22063A060.pdf` | NUREG/CR-7289 (ORNL/TM-2021/2002), *Nuclear Data Assessment for Advanced Reactors* | F. Bostelmann, G. Ilas, C. Celik, A.M. Holcomb, W.A. Wieselquist, Oak Ridge National Laboratory, for the U.S. NRC | March 2022 |
| `nrc/ML070810350.pdf` | NUREG-0800, *Standard Review Plan for the Review of Safety Analysis Reports for Nuclear Power Plants*, Table of Contents, Revision 6 | U.S. NRC staff | March 2007 |
| `nrc/ML17325A611.pdf` | Regulatory Guide 1.232, Revision 0, *Guidance for Developing Principal Design Criteria for Non-Light-Water Reactors* (ARDC, SFR-DC, MHTGR-DC) | U.S. NRC (technical lead J. Mazza) | April 2018 |
| `nrc/nureg-1537-part1-1996.pdf` | NUREG-1537, Part 1, *Guidelines for Preparing and Reviewing Applications for the Licensing of Non-Power Reactors: Format and Content* | U.S. NRC Office of Nuclear Reactor Regulation | February 1996 |
| `nrc/nureg-1520-rev2-2015.pdf` | NUREG-1520, Revision 2, *Standard Review Plan for Fuel Cycle Facilities License Applications*, Final Report | U.S. NRC Office of Nuclear Material Safety and Safeguards | 2015 |
| `nrc/nureg-1555-1999.pdf` | NUREG-1555, *Standard Review Plans for Environmental Reviews for Nuclear Power Plants* (Environmental Standard Review Plan) | U.S. NRC Office of Nuclear Reactor Regulation | October 1999 |
| `nrc/nureg-0654-fema-rep-1-rev2-2019.pdf` | NUREG-0654/FEMA-REP-1, Revision 2, *Criteria for Preparation and Evaluation of Radiological Emergency Response Plans and Preparedness in Support of Nuclear Power Plants*, Final Report | U.S. NRC and the Federal Emergency Management Agency (both U.S. Government) | December 2019 |

**Added 6 October 2026** (the six rows from `ML070810350` down), supplied by
the owner as the sources of Kovan's new concept-tree skeleton (OUTRAM PARK
GitHub issues #724, #726). Files named `ML…` carry their ADAMS accession number
(read from the document or its NRC link); the four named `nureg-…` were
supplied as files, and their accession numbers were not recorded, so they are
named by report number instead. Their `corpus.rs` entries follow when Kovan's
new concept schema lands (#727). NUREG-0654/FEMA-REP-1 is a joint NRC–FEMA
publication; both are U.S. Government agencies, so 17 U.S.C. § 105 covers it.

The two NUREG/CR reports were prepared by a contractor (Oak Ridge National
Laboratory) under NRC sponsorship and published by the NRC in its NUREG series.
They are included on the basis of the NRC statement above, as NRC publications.

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

| File | Document | Basis |
|---|---|---|
| `us-doe/ornl-tm-2018-976-msr-nureg0800-gap-analysis.pdf` | R.J. Belles, G.F. Flanagan, *Regulatory Gap Analysis of Select NUREG-0800 Chapters for Applicability to Molten Salt Reactors*, ORNL/TM-2018/976, Oak Ridge National Laboratory (managed by UT-Battelle, LLC) for the U.S. Department of Energy, October 2018. Source of the MSR extension of Kovan's concept tree (OUTRAM PARK #726) | The cover states "Approved for public release. Distribution is unlimited." (checked 6 October 2026) **Where:** PDF page 1 (the cover). |

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
2026, except the three EPA reports, added on 28 September 2026. Bibliographic details were read from each document's own title and
front-matter pages; licence details from the sources cited in each section.
Nothing here is a restricted or proprietary document; anything that is must
not be added to this repository.
