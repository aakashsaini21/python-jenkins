FROM python:3.12.3
WORKDIR /app
EXPOSE 5000
COPY app.py .
COPY test_app.py .
RUN pip install Flask pytest

CMD ["python3", "app.py"]