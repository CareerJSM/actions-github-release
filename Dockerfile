# Container image that runs your code
FROM python:alpine

RUN apk add --no-cache libffi-dev build-base
RUN /usr/local/bin/python -m pip install --upgrade pip

RUN pip install --no-cache-dir pygithub
COPY entrypoint.py /entrypoint.py

RUN chmod +x /entrypoint.py
ENTRYPOINT ["/entrypoint.py"]