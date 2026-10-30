FROM python:3.9-slim
WORKDIR /custom_workflows
RUN apt-get update && apt-get install -y git && rm -rf /var/lib/apt/lists/*
COPY . /custom_workflows
RUN chmod +x /custom_workflows/.github/scripts/entrypoint.sh
ENTRYPOINT  ["/custom_workflows/.github/scripts/entrypoint.sh"]
