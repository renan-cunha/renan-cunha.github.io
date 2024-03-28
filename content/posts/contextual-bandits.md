+++
title = "A Very Short Intro to Contextual Bandits"
description = ""
mathjax = true
date = "2020-02-24"
categories = [
    "AI",
        "Reinforcement Learning",
"Contextual Bandits"

]
+++

In the contextual bandits problem, we have an
environment with _K_ possible actions. The environment returns some context _x_, taken from a distribution _X_.
The environment also has a function _f(x, k)_, that calculates the reward
based on the context and the chosen action _k_.

The goal then is to find the policy $\pi$ that maximizes the rewards obtained in the
long-term. A policy is a function that maps contexts to actions.

The diagram below illustrates the problem:

![contextual-bandits-diagram](/intro.png)

Explaining the steps:

- The environment displays a context _x_.
- The agent chooses an action _k_ based on the observed context.
- The environment returns a reward based on the most recent context and action.

This process continues without a determined time-limit.

Additional considerations can be taken into account, like statistical efficiency (if the
algorithm learns fast considering the number of examples) and
computational complexity.

## Example

- Agent: A doctor.
- Environment: Every day, a random patient comes into the hospital with a
  disease X (the disease is the same to all patients).
  * Context: Features of the patient like age, sex, etc.
  * Actions: K-number of medicines that the doctor can prescribe. 
  * Reward: 1 if the patient was cured, 0 otherwise.

## References

Slivkins, Aleksandrs. “Introduction to Multi-Armed Bandits.” ArXiv:1904.07272 [Cs, Stat], Sept. 2019. arXiv.org, http://arxiv.org/abs/1904.07272.

