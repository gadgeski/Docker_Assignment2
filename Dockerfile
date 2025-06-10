# Dockerfile
FROM python:3.9-slim-buster
WORKDIR /app
COPY . /app
CMD ["python", "main.py"] 
# または実行したいPythonスクリプト名