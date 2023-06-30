#!/usr/bin/env bash


<<COMMENT

  Summary:
  The following code will update the python version.

COMMENT

sudo apt install -y \
  python3-pip \
  unixodbc unixodbc-dev \
  pylint
  # for pyodbc

sudo apt-get upgrade

pip3 install --no-warn-script-location \
  dbt-core \
  dbt-bigquery \
  dbt-sqlserver \
  pandas \
  matplotlib \
  tensorflow-gpu \
  scikit-learn \
  nltk \
  numpy \
  gensim \
  great_expectations \
  cassandra-driver \
  fastparquet \
  neo4j \
  numpy \
  pandas \
  pathos \
  polars \
  psycopg2_binary \
  pyarrow \
  pyhocon \
  pyodbc \
  pymongo \
  python-dotenv \
  sqlalchemy \
  dask

  # snowflake-connector-python \