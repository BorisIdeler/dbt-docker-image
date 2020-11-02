FROM python:3.9.0-buster

RUN apt-get install -y git libpq-dev python-dev python3-pip && \
    apt-get remove -y python-cffi && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

RUN pip install --upgrade cffi --no-cache-dir && \
    pip install cryptography==1.7.2 --no-cache-dir

RUN pip install --no-cache-dir dbt==0.18.1

ENV DBT_DIR /dbt

WORKDIR $DBT_DIR

ENTRYPOINT dbt