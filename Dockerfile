FROM jupyter/minimal-notebook:dfcb043bd887
# Install from requirements.txt file
COPY --chown=${NB_UID}:${NB_GID} requirements3.txt /tmp/
RUN pip install --requirement /tmp/requirements3.txt && \
    fix-permissions $CONDA_DIR && \
    fix-permissions /home/$NB_USER
#For conda, the Dockerfile is similar:

# Install from requirements.txt file
#COPY --chown=${NB_UID}:${NB_GID} environment_2.yml /tmp/
#RUN conda install --yes --file /tmp/environment_2.yml && \
#RUN conda env create -f /tmp/environment_2.yml && \
#    fix-permissions $CONDA_DIR && \
#    fix-permissions /home/$NB_USER

RUN pip install https://s3-us-west-2.amazonaws.com/ai2-s2-scispacy/releases/v0.3.0/en_core_sci_lg-0.3.0.tar.gz
