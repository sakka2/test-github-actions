FROM python:3.10

WORKDIR /app

COPY requirements.txt ./
COPY pyproject.toml ./

RUN pip3 install -r requirements.txt

COPY . .

CMD [ "python3", "-m" , "flask", "run", "--host=0.0.0.0"]
