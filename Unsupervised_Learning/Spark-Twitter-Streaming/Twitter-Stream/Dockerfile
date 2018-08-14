FROM python:3.6.3-slim

#Run an update
RUN apt-get update

#Create a user ds
RUN adduser -D -S -h /home/ds -s /bin/ash ds

#install neccessary packages
RUN pip install --upgrade pip
RUN pip install jupyterlab tweet-preprocessor tweepy numpy pandas


#Set Variables
ENV HOME=/home/ds
ENV SHELL=/bin/bash
ENV USER=ds
VOLUME /home/ds
WORKDIR /home/ds

#Startup the Jupyter notebook when this runs.
CMD jupyter lab --no-browser --port 7799 --ip='*' --allow-root --NotebookApp.iopub_data_rate_limit=10000000
