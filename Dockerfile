FROM python:3.9-slim

WORKDIR /First_Project

COPY calculator.py .

CMD ["python3", "calculator.py"] 
