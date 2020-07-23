FROM jupyter/scipy-notebook:b90cce83f37b
MAINTAINER Heather Kelly <heather@slac.stanford.edu>

COPY nexo-python-env.yml /tmp/

RUN conda env update --file /tmp/nexo-python-env.yml && \
    fix-permissions $CONDA_DIR & \
    fix-permissions /home/$NB_USER
    
#ENV HDF5_USE_FILE_LOCKING FALSE

