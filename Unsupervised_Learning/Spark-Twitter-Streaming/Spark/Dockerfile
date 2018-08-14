FROM jupyter/pyspark-notebook

#Create a user ds

USER root
RUN adduser ds


#install neccessary packages
RUN pip install jupyterlab tweet-preprocessor numpy pandas matplotlib seaborn

#Set Variables
ENV HOME=/home/ds
ENV SHELL=/bin/bash
ENV USER=ds
VOLUME /home/ds
WORKDIR /home/ds

RUN usermod -aG sudo ds

#Startup the Jupyter notebook when this runs.
CMD jupyter lab --no-browser --port 7788 --ip='*' --allow-root --NotebookApp.iopub_data_rate_limit=10000000
