[![CircleCI](https://circleci.com/gh/ankitjain28may/project-ml-microservice-kubernetes.svg?style=svg)](https://circleci.com/gh/ankitjain28may/project-ml-microservice-kubernetes)

## Project Overview

In this project, you will apply the skills you have acquired in this course to operationalize a Machine Learning Microservice API. 

You are given a pre-trained, `sklearn` model that has been trained to predict housing prices in Boston according to several features, such as average rooms in a home and data about highway access, teacher-to-pupil ratios, and so on. You can read more about the data, which was initially taken from Kaggle, on [the data source site](https://www.kaggle.com/c/boston-housing). This project tests your ability to operationalize a Python flask app—in a provided file, `app.py`—that serves out predictions (inference) about housing prices through API calls. This project could be extended to any pre-trained machine learning model, such as those for image recognition and data labeling.

### Project Tasks

Your project goal is to operationalize this working, machine learning microservice using [kubernetes](https://kubernetes.io/), which is an open-source system for automating the management of containerized applications. In this project you will:
* Test your project code using linting
* Complete a Dockerfile to containerize this application
* Deploy your containerized application using Docker and make a prediction
* Improve the log statements in the source code for this application
* Configure Kubernetes and create a Kubernetes cluster
* Deploy a container using Kubernetes and make a prediction
* Upload a complete Github repo with CircleCI to indicate that your code has been tested

You can find a detailed [project rubric, here](https://review.udacity.com/#!/rubrics/2576/view).

**The final implementation of the project will showcase your abilities to operationalize production microservices.**

---

## Setup the Environment

* Create a virtualenv and activate it
* Run `make install` to install the necessary dependencies

### Running `app.py`

1. Standalone:  `python app.py`
2. Run in Docker:  `./run_docker.sh`
3. Run in Kubernetes:  `./run_kubernetes.sh`

### Running the project in Docker

1. Setup and Configure Docker locally.
2. Run `./run_docker.sh` file to build the image and start the container.
3. Run `./make_prediction.sh` file to send the request to the application running in the docker container.
4. Stop the container once you are done with the testing by running the command `docker stop <container-name>`

### Running the project in Kubernetes

1. Setup and Configure Kubernetes locally using Minikube.
2. Run `./upload_docker.sh` to upload the image to DockerHub so it can be available in the Kubernetes environment.
3. Run `./run_kubernetes.sh` file to build the deployment by fetching the image from the DockerHub. It may be possible to run it second time as image can take time in pulling and hence in starting the container so port forwarding can be failed.
4. Run `./make_prediction.sh` file to send the request to the application running in the kubernetes environment.
5. Stop the locally running kubernetes cluster.  
