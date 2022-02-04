# MLFlow in GCP
Docker image for running mlflow in GCP (Recommend in Cloud Run)

## Requirements
#### Cloud SQL - PostgreSQL

Execute the following SQL statements in the database
```sql
create database mlflow;
create user mlflow with encrypted password '<password>';
grant all privileges on database mlflow to mlflow;
```

#### Cloud Storage - Model Artifacts


## Environment variables 

#### Required
* `MLFLOW_SERVER_BACKEND_STORE` - Cloud SQL connection string, eg. `postgresql+psycopg2://<user>:<password>@/<dbname>? host=/cloudsql/<cloud-sql-connection-name>`
* `MLFLOW_SERVER_DEFAULT_ARTIFACT_ROOT` - Cloud Storage url, eg. `gs://mlflow`

#### Optional
* `MLFLOW_SERVER_HOST` - Host IP, default `0.0.0.0`
* `MLFLOW_SERVER_PORT` - Host port, default `8080`
* `MLFLOW_SERVER_WORKERS` - Number of server workers, default `2`
