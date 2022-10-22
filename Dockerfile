FROM apache/airflow:2.4.1
COPY requirements.txt constraints.txt ./
RUN pip install -r requirements.txt -c constraints.txt