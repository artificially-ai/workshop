FROM jupyter/datascience-notebook

MAINTAINER Wilder Rodrigues (wilder.rodrigues@ekholabs.ai)

USER $NB_USER

# Install TensorFlow
# RUN conda install -c conda-forge tensorflow -y && \
#    conda install -c conda-forge numpy keras nltk pandas gensim opencv -y

# Install Keras Contrib
RUN pip install tensorflow \
                keras \
                numpy \
                scipy \
                scikit-learn \
                pillow \
                opencv-python \
                pandas \
                nltk \
                gensim \
                bokeh \
                Flask \
                requests \
                pyyaml \
                jupyterlab \
                matplotlib \
                git+https://www.github.com/keras-team/keras-contrib.git

RUN pip install npm jupyterlab
RUN jupyter serverextension enable --py jupyterlab
