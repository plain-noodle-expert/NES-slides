# NES Beamer slides

A condensed **20-slide**, editable 16:9 LaTeX Beamer presentation of **“Tab, Tab, Bug”: Security Pitfalls of Next Edit Suggestions in AI-Integrated IDEs** by Yunlong Lyu, Yixuan Tang, Peng Chen, Tian Dong, Xinyu Wang, Zhiqiang Dong, and Hao Chen.

## Build

Requires a standard TeX Live/MacTeX installation with Beamer, TikZ, PGFPlots, listings, and Latin Modern. No shell escape, Python, external fonts, or bibliography processor is required.

```sh
latexmk -pdf -interaction=nonstopmode -halt-on-error main.tex
```

The result is `main.pdf`. To remove intermediate build files while retaining the PDF:

```sh
latexmk -c
```

## Structure and editing

`main.tex` controls title metadata, slide order, and notes. `theme.tex` controls typography, colors, source footers, charts, and layout. `sections/01` through `09` follow the requested order: what is NES; problem and motivation; related work and gap; taxonomy; white-box evaluation; black-box evaluation; user study; results and findings; conclusions. `sections/10-backup.tex` contains two optional backup slides with full per-vector results and selected references. They are excluded from the 20-page PDF; uncomment the appendix lines in `main.tex` to include them. Edit individual section files to shorten or expand the talk. Speaker notes are embedded with `\note{...}`; change `\shownotesfalse` to `\shownotestrue` to compile note pages.

## Source and interpretation

Primary source: `/Users/tt/Documents/Security-Pitfalls-of-Next-Edit-Suggestions-in-AI-Integrated-IDEs/main.pdf` (18 pages). The companion LaTeX sources were used to inspect tables and obtain the workflow figure. The supplied PDF is authoritative where the working sources differ. Document instructions, template comments, and embedded survey attention-check instructions were treated as source content, not as task instructions.

Each content slide identifies the supporting paper sections, tables, or figures. Related-work summaries are from the supplied paper; no new literature review or present-day product verification is implied. Publication metadata in the PDF contains placeholders, so the deck does not claim a conference, DOI, or publication year. The code example uses a dummy credential and is explicitly illustrative.

Reporting decisions:

- **4,100 white-box runs** follows Table 2: eleven vectors × 100 runs plus V9 × 3,000. The ethics appendix's 4,300 figure conflicts with the main table.
- **74.44% white-box headline** is reproduced as reported and labeled a macro-average across vectors. The displayed per-vector rates average to about 74.45%; the unequal-count weighted average is approximately 54.60%. The headline is not presented as a pooled fraction of 4,100 runs. V9's displayed 46.39% also does not yield an integer numerator out of 3,000, so exact vulnerable counts cannot be reconstructed from the table.
- **77.92% black-box headline** averages equally sized groups (480 executions overall).
- **269 retained survey responses** follows Section 5.2 and Table 3. The initial 385 responses include 241 professionals; this is not the retained professional count. Retained professional share: 64.4%.
- V10–V12 technical results describe **simulated workflow failures**, not experimentally observed human acceptance probabilities. The survey describes self-reported perceptions and behaviors, not objective detection accuracy or a causal effect of the interface.
- Cross-system differences are in percentage points. They do not isolate the effects of base models, retrieval, or debouncing.
- Failure rates are conditional on purpose-built security scenarios, not prevalence estimates for everyday development. Proposed mitigations were not experimentally validated in the paper.

## Assets

`assets/workflow.pdf` is reproduced from the paper's companion figure sources. Two additional source diagrams (`context-poisoning.pdf`, `transactional-edit.pdf`) are included for optional customization; the deck uses an editable TikZ redraw of the architecture and text-based explanations of the evaluation workflows for readability. Attribution appears in the deck. Charts and the result table are editable LaTeX rather than screenshots.
