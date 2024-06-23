FROM python 3.11.4-slim-buster''


WORKDIR .
RUN apt -qq update && apt -qq install -y git wget pv jq python3-dev ffmpeg mediainfo
COPY . .
RUN pip3 install -r requirements.txt
CMD ["bash start.sh"]
