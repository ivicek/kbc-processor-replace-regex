FROM ubuntu:18.04

WORKDIR /code
RUN mkdir -p /data/out/files /data/in/files /data/out/tables /data/in/tables
RUN apt-get update && apt-get install -y jq
COPY . /code/

# Run the application
CMD bash /code/replace.sh