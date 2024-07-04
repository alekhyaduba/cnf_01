# base docker image
FROM python:3.9
LABEL maintainer='Alex'

# copy requirements file inside docker image
ADD ./techtrends/requirements.txt .

# run pip install inside docker image ( build time)
RUN pip install -r requirements.txt

COPY ./techtrends /app

# current working directory inside docker
WORKDIR /app

# run on port- defined in app.py
EXPOSE 3111

# runtime
CMD ["python","app.py", "runserver", "-d"]


