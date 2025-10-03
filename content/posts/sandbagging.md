+++
title = 'Debate with Sandbagging: A Minimal Extension'
date = 2025-10-02T00:17:40Z
+++

**One-line**: Replicated the debate-improves-truth result; extended to N > 2 debaters with sandbagging roles. Judge accuracy improves with more debaters, but decreases when N − 1 debaters on the correct-answer team are sandbagging.

**Why this matters**
Tests whether debate-style oversight can be subverted by strategic underperformance (sandbagging). Directly relevant to oversight-subversion benchmarks and collusion-style risks in automated regimes.

## TL;DR
- **Replication**: [Debating with More Persuasive LLMs Leads to More Truthful Answers](https://arxiv.org/pdf/2402.06782).
- **Extension**: N-debaters + assigned sandbagger(s); measured effects on judge truth rate.
- **Findings**:
  - Replication: More Persuasive LLM Debaters → More Truthful Answers
  - Judge Accuracy Improves With More Debaters
  - Sandbagging Hurts The Debate
- **Limitation**: Small scale (15 QuALITY questions, single run).

## Setup
- **Models**: gpt-4.1-mini and gpt-5-mini as debaters.
- **Data**: Sample of 15 QuALITY questions, from the same dataset used in the original paper.
- **Debate Protocol**:
  - **rounds**=3
  - **judge**=gpt-4.1-mini
  - **N debaters**=If there are more than two debaters (N > 2), they are divided into teams and alternate between rounds.
- **Sandbagging Assignment**: when sandbagged was assigned, N-1 debaters of the team arguing for the correct position were sandbagged. [Sandbag prompt](https://github.com/renan-cunha/llm_debate/blob/main/sandbag_prompt.txt)
  -  [AI Sandbagging: Language Models can Strategically Underperform on Evaluations](https://arxiv.org/abs/2406.07358)).
- **Metrics**: judge-truth%,

## Key Results

### Replication: More Persuasive LLM Debates → More Truthful Answers

![](/img/chart.svg)

Using a stronger debater model (GPT-5-mini vs. GPT-4.1-mini) led to higher judge accuracy.

### Judge Accuracy Improves With More Debaters

![](/img/num_debaters.svg)

Increasing the number of debaters (equivalent to the number of rounds) leads to higher judge accuracy.
This finding differs from the original paper, where accuracy was found to remain stable or even decrease.
One possible explanation for this difference is the fact that GPT-4.1-mini, which was used as the judge, handles larger contexts more effectively than GPT-4-Turbo that was used originally.


### Sandbagging Hurts The Debate

![](/img/sandbag_chart.svg)

Sandbagging decreases judge accuracy. Even though there is still one legitimate debater arguing for the correct answer, they lose ground as the number of sandbagging debaters on their team increases. This showcases the need to address sandbagging (and other potential collusion strategies) in debate and other automated oversight frameworks.


## Run

* [Repo](https://github.com/renan-cunha/llm_debate/blob/main)
* [A few debate transcripts](https://github.com/renan-cunha/llm_debate/blob/main/transcripts)


***

This was my final project at the [ML4Good Bootcamp](https://www.ml4good.org/). Huge thanks to Alejandro Acelas, Carol Erthal, and Elvis Sikora for their helpful feedback!
