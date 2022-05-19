FROM python:3.9.13

WORKDIR /usr/src/app

COPY requirements.txt ./

RUN pip install --no-cache-dir -r requirements.txt
COPY . .
CMD ["python", "uvicorn", "app.main:app", "--host", "0.0.0.0", "--port", "8000"]

