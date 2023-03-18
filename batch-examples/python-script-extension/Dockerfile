# Container image that runs your code
FROM arm64v8/python

# Copies your code file from your action repository to the filesystem path `/` of the container
COPY script.py /script.py

# Code file to execute when the docker container starts up (`entrypoint.sh`)
ENTRYPOINT ["python","script.py"]

ENV GH_TOKEN=$GH_TOKEN
ENV GH_USERNAME=$GH_USERNAME
