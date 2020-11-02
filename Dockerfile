FROM python:3.9.0-buster

RUN pip install --no-cache-dir dbt==0.18.1

ENV DBT_DIR /dbt

WORKDIR $DBT_DIR

ENTRYPOINT dbt