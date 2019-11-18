# Workshop

The examples cover a straightforward start, from shallow to intermediate, deep and CNN networks. It also shows how the trained model can be tested and evaluated.

## Build Docker Image

After cloning this repository, please execute the command below to build the Docker image.

```
docker build -t deeplearning-stack .
```

## Run Docker Container

Once you have built the image, please execute the command below to run the container.

```
docker-compose up
```

* Remark: 'jovyan' is the default Docker user.

## Jupyter Notebooks

After starting the Docker container, copy the Jupyter notebook URL and start working.

* Remark: if you face problems concerning lack of resources, please increase your Docker Engine memory. I tested the notebooks in a MacBook Pro with 16GB of RAM. I dedicated 5GB to my Docker Engine.

## Running with Anaconda

The project also has a `environment.yml` file that can be used to create an Anaconda environment. One might be willing to use
it instead of a docker container. To create, activate and run Jupyter Lab from the environment, check the commands below:

* ```conda env create -f environment.yml```
  - This will create the `dl-workshop` environment.
* ```conda activate dl-workshop```
  - This will activate the environment.
* ```jupyter-lab```
  - This will start Jupyter Lab and open it in the browser.

## TensorBoard

If you want to visualise the loss and accuracy metrics, just execute TensorBoard pointing to your logs directory:

```
tensorboard --logdir [path_to_project]/DLinK/notebooks/logs
````

* Remark: the 'logs' directory is not part of the repository. It has to be created under the 'notebooks' directory. All the Jupyter notebook are already configured to use 'notebooks/logs' for the TensorBoard files.
