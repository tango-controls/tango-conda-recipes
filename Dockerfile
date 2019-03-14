FROM condaforge/linux-anvil

# Update conda build
RUN /opt/conda/bin/conda config --remove channels conda-forge
RUN /opt/conda/bin/conda config --add channels tango-controls
RUN /opt/conda/bin/conda update --yes --all
RUN /opt/conda/bin/conda clean --yes --all
