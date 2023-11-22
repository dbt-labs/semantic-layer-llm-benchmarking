## Using the notebook 

- Import the notebook file into a new Hex project.
- Upload the files into the project
- To interact with our results directly, run the cells from `Unioned results of all runs` and onward.
- To run the queries yourself, load this repo's dbt project into dbt Cloud, and provide your own dbt Cloud Service Token and OpenAI API key by setting them as secrets.

## The files in this directory are: 
- The Hex notebook export itself (Semantic Layer LLM Benchmarking.yaml)
- The DDL used by the standard SQL generation path (ACME_small.ddl)
- The benchmark questions and their "gold" queries for comparison purposes (benchmark_questions.ttl)
- A number of results_pt[n].csv files which are unioned for final querying. 
