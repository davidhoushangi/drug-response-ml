install:
\tpip install -r requirements.txt
crawl-pubmed:
\tscrapy crawl pubmed -a query="$(q)" -a email="$(e)" -o data/pubmed_results.jsonl
crawl-pubmed-config:
\tpython scripts/run_from_config.py configs/pubmed.yaml
