# Airflow 2

 Docker-compose for local airflow development

## Specifications

1. Airflow version 2.4.1
2. Have Celery executor
3. Installed Airflow Provider libraries for GCP and other cloud providers from PyPI
4. Require [Docker desktop](https://www.docker.com/products/docker-desktop/)

## How to run

### Prepare Airflow UID

```bash
echo -e "AIRFLOW_UID=$(id -u)" > .env
```

### start

- Prepare your dependencies in `requirements.txt` and `constraints.txt` (if any)
- up with the following command.

```bash
docker-compose up
```

#### access Airflow web ui

[http://localhost:8080](http://localhost:8080) and login with username/password `airflow`/`airflow`

#### access Airflow worker node

```bash
docker exec -it workspace_airflow-airflow-worker-1 /bin/bash 
```

### stop

`Ctrl`+`C` on the running terminal

### remove containers

```bash
docker-compose down
```

### remove all components

```bash
docker-compose down --volumes --rmi all
```

## How to add new DAGs

Copy DAG files/folders into `/dags` folder, or use `rsync` to copy whole target folder.

```bash
rsync -ax --exclude <folders to exclude e.g. env/> <folder path> /dags/
```

## Reference link

- [Running Airflow in Docker](https://airflow.apache.org/docs/apache-airflow/stable/howto/docker-compose/index.html)
- [Installation from PyPI](https://airflow.apache.org/docs/apache-airflow/stable/installation/installing-from-pypi.html#installation-from-pypi)
- [Constraints.txt](https://raw.githubusercontent.com/apache/airflow/constraints-2.4.1/constraints-3.7.txt)
- [apache-airflow-providers-google](https://airflow.apache.org/docs/apache-airflow-providers-google/stable/index.html)
