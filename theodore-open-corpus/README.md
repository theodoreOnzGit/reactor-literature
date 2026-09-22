# Theodore's open corpus

Open literature in the repository owner's (Theodore Kay Chen Ong's) own Kovan
library. Unlike [`../kovan-standard-open-corpus/`](../kovan-standard-open-corpus/),
nothing here is hardcoded into Kovan. Proprietary literature is kept in a
separate, private repository and never here.

Every document here is redistributable, on one of these grounds, each stated
by the document itself or by its publisher:

1. **Documents authored by the repository owner.**
2. **Open access under a Creative Commons Attribution licence (CC BY).**
3. **U.S. NRC documents: open access, U.S. Government Work.**
4. **Other U.S. Government reports marked for unlimited distribution.**
5. **European Commission (JRC) reports, whose reuse the Commission authorises.**

## 1. Documents by the repository owner

| File | Document | Licence |
|---|---|---|
| `ong/tuas-theodore-ong.pdf` | T.K.C. Ong, S. Xiao, P.F. Peterson, "An open-source Thermo-hydraulic Uniphase Advection and Convection Solver for Salt Flows (TUAS)", *International Journal of Advanced Nuclear Reactor Design and Technology* 6 (2024) 281–301, <https://doi.org/10.1016/j.jandt.2025.03.006> | The article itself states: "This is an open access article under the CC BY license (<http://creativecommons.org/licenses/by/4.0/>)." **Where:** PDF page 1, bottom of the page, under the DOI. |

## 2. Open access, CC BY

| File | Paper | Licence statement |
|---|---|---|
| `cc-by/she2021pangu.pdf` | D. She, F. Chen, B. Xia, L. Shi, "Simulation of the HTR-10 Operation History With the PANGU Code", *Frontiers in Energy Research* 9:704116 (2021), <https://doi.org/10.3389/fenrg.2021.704116> | "distributed under the terms of the Creative Commons Attribution License (CC BY)" **Where:** PDF page 9, the licence note in the article's back matter. |
| `cc-by/pichler2020-316l-thermophysical-properties.pdf` | P. Pichler, B.J. Simonds, J.W. Sowards, G. Pottlacher, "Measurements of thermophysical properties of solid and liquid NIST SRM 316L stainless steel", *Journal of Materials Science* (Springer), <https://doi.org/10.1007/s10853-019-04261-6> | Creative Commons licence; also "Official contribution of the National Institute of Standards and Technology; not subject to copyright in the United States" **Where:** the NIST statement on PDF page 1; the Creative Commons statement on PDF page 12. |
| `cc-by/gomezzarzuela2021-1d-bubbly-flow-solver.pdf` | C. Gómez-Zarzuela, C. Peña-Monferrer, S. Chiva, R. Miró, "Development and validation of a one-dimensional solver in a CFD platform for boiling flows in bubbly regimes", *Progress in Nuclear Energy* 134 (2021) 103680, <https://doi.org/10.1016/j.pnucene.2021.103680> | "This is an open access article under the CC BY license (http://creativecommons.org/licenses/by/4.0/)" **Where:** PDF page 1, bottom of the page, under the DOI. |

CC BY requires attribution: the authors, titles and DOIs above are that
attribution, and the files are unmodified.

## 3. U.S. NRC documents

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

| File | Document | Prepared by | Published |
|---|---|---|---|
| `nrc/nureg-cr-2671-marviken.pdf` | NUREG/CR-2671 (MXC-301), *The Marviken Full Scale Critical Flow Tests: Summary Report*, Joint Reactor Safety Experiments in the Marviken Power Station, Sweden | Marviken project, for the U.S. NRC | 1982 |

**Where to check:** the NRC Site Disclaimer page quoted above
(<https://www.nrc.gov/about-nrc/site-disclaimer>); it covers every NRC document
here, and each document is the NRC's own publication.

NUREG/CR-2671 was prepared by the Marviken project under NRC sponsorship and
published by the NRC in its NUREG series; it is included on the NRC statement
above, as an NRC publication.

## 4. Other U.S. Government reports

Reports of the U.S. Department of Energy and its predecessors (the Atomic
Energy Commission, the Energy Research and Development Administration),
each marked for unlimited distribution.

| File | Document | Basis |
|---|---|---|
| `us-doe/kim1975-thermophysical-properties-stainless-steels.pdf` | C.S. Kim, *Thermophysical Properties of Stainless Steels*, ANL-75-55, Argonne National Laboratory, prepared for the U.S. Energy Research and Development Administration under Contract W-31-109-Eng-38, September 1975 | The title page states "DISTRIBUTION OF THIS DOCUMENT IS UNLIMITED" (checked on the scanned title page, 22 September 2026) **Where:** PDF page 1 (the scanned cover), bottom right. |
| `us-doe/rfp-936-critical-radii-pu239-u233-1967.pdf` | D.R. Ferguson, D.C. Coonfield, *Calculated Critical Radii of Spheres of Plutonium 239 and Uranium 233 with Various Spherical Reflectors*, RFP-936, The Dow Chemical Company, Rocky Flats Division, for the U.S. Atomic Energy Commission under Contract AT(29-1)-1106, 9 June 1967 | The report page states "DISTRIBUTION OF THIS DOCUMENT IS UNLIMITED" (checked on the scanned page, 22 September 2026) **Where:** PDF page 5 (the report's title page), bottom right. |

## 5. European Commission (JRC)

| File | Document | Basis |
|---|---|---|
| `jrc/kjna28712enn.pdf` | K. Kugeler, H. Nabielek, D. Buckthorpe, *The High Temperature Gas-cooled Reactor: Safety considerations of the (V)HTR-Modul*, EUR 28712 EN, Publications Office of the European Union, 2017, <https://doi.org/10.2760/270321> | The report states: "Reuse is authorised provided the source is acknowledged. The reuse policy of European Commission documents is regulated by Decision 2011/833/EU (OJ L 330, 14.12.2011, p. 39)." Acknowledged here. **Where:** PDF page 2, the legal notice. |

## Provenance

Added on 22 September 2026: the TUAS paper from the owner's own collection;
the other five moved from `crates/kovan-literature/open/` in OUTRAM PARK,
where their metadata, extracted text and BibTeX remain. Gómez-Zarzuela et al.
and RFP-936 were added the same day from the owner's collection. Licence details were
read from each document's own statements, quoted above.
