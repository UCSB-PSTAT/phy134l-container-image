FROM ucsb/scipy-base:latest

MAINTAINER LSIT Systems <lsitops@lsit.ucsb.edu>

USER root

RUN conda install -y astropy photutils

RUN pip install --upgrade batman-package git+https://github.com/lkreidberg/batman.git 

USER $NB_USER
