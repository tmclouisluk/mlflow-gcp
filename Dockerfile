FROM python:3.8-slim-buster

# Set the working directory to /
WORKDIR /
# Copy the directory contents into the container at /
COPY ./ /

# Install any needed packages specified in requirements.txt
RUN apt-get update && pip install -r requirements.txt && chmod +x /setup_mlflow.sh

# REQUIRED:
# ENV MLFLOW_SERVER_BACKEND_STORE
# ENV MLFLOW_SERVER_DEFAULT_ARTIFACT_ROOT

# OPTIONAL (if unset, will set to default):
ENV MLFLOW_SERVER_HOST 0.0.0.0
ENV MLFLOW_SERVER_PORT 8080
ENV MLFLOW_SERVER_WORKERS 2

EXPOSE 8080

CMD ["/setup_mlflow.sh"]