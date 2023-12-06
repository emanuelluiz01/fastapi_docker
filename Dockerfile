FROM python:3.11.2

WORKDIR /app

COPY requirements.txt .

RUN pip install -r requirements.txt

EXPOSE 80

COPY main.py .

CMD [ "uvicorn", "main:app", "--host", "0.0.0.0", "--port", "80"]
 