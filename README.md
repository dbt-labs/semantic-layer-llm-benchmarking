## About the repo

This repo is an accompaniment to [this Roundup article](https://roundup.getdbt.com) and extends the work done in _A Benchmark to Understand the Role of Knowledge Graphs on Large Language Model's Accuracy for Question Answering on Enterprise SQL Databases_, [a preprint on arxiv.org](https://arxiv.org/pdf/2311.07509.pdf) from the team at data.world.

## About the experiment

Using OpenAI's completions API (gpt-4), we provide a [few-shot prompt](https://www.promptingguide.ai/techniques/fewshot) to introduce the LLM to proper dbt SL syntax (which is otherwise not available due to the knowledge cutoff of April 2023) and ask it to generate a SL query to answer a selection of questions from the benchmark.

## How to interact with the benchmark and our results

- This repo includes an export of our Hex notebook, as well as the files necessary to generate the same results.
- Make a copy of [this Google Sheet](https://docs.google.com/spreadsheets/d/1n-o99KynLkgQu0QHLwmUVYk88QTfkbWgdors2nZFEXs/edit#gid=2130643231), which is a csv output of the notebook's final dataframe.
- Run the benchmark yourself by [importing a copy of the notebook](https://learn.hex.tech/docs/explore-data/projects/import-export), then [providing your own dbt Cloud service token](https://docs.getdbt.com/docs/use-dbt-semantic-layer/quickstart-sl#set-up-dbt-semantic-layer) and OpenAI API key.

Created by [Jason Ganz](https://www.linkedin.com/in/jasnonaz/), [Joel Labes](https://www.linkedin.com/in/joel-labes/) and [Jordan Stein](https://www.linkedin.com/in/jstein5/)
