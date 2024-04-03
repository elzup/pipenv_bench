# Dockerfile
FROM python:3.9.15

WORKDIR /app

RUN pip install pipenv

COPY Pipfile Pipfile.lock ./

RUN pipenv install --system --deploy

COPY . .

CMD ["pipenv", "run", "python", "./work.py"]