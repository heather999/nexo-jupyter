FROM jupyter/scipy-notebook:b90cce83f37b
MAINTAINER Heather Kelly <heather@slac.stanford.edu>

COPY nexo-python-env.txt /tmp/

RUN conda install -y -c conda-forge --file /tmp/nexo-python-env.txt && \
    pip install histlite && \
    fix-permissions $CONDA_DIR & \
    fix-permissions /home/$NB_USER
    
#ENV HDF5_USE_FILE_LOCKING FALSE

