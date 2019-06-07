FROM python:3.7.3-alpine3.8

LABEL "com.github.actions.name"="GitHub Action PythonLint"
LABEL "com.github.actions.description"="Run pylint commands"
LABEL "com.github.actions.icon"="check-circle"
LABEL "com.github.actions.color"="blue"

RUN apk add --no-cache bash build-base gcc
RUN pip install --upgrade pip
RUN pip install pipenv
RUN python --version ; pip --version ; 

COPY entrypoint.sh /
RUN chmod +x /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]