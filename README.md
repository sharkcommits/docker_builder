# Docker Builder
A simple guide to build your own docker environment for machine learning projects using Python!

## Step 1:

Download [Docker](https://www.docker.com) from the official website based on your OS and install it.

## Step 2:

Clone this repository and put your desired files under the *src* folder; such as your csv files, python files for your project.

We are gonna change the *requirements.txt* for our needs. You can add new packages, remove some of them or just leave it as it is. This one contains following Python packages:

- numpy
- pandas
- scikit-learn
- scipy
- xgboost
- notebook

- seaborn
- matplotlib

- tensorflow
- keras
- tensorflow-hub
- tensorflow-text
- torch
- torchvision
- torchaudio
- transformers

**For following sections**: You have to change *IMAGE_NAME* and *CONTAINER_NAME* for your preference. You should pick a name. It doesn't have to be the same name for both.

## Step 3:

Run `docker build -t IMAGE_NAME .` command. It will create the image. It might take several minutes based on your packages. You can have a cup of coffee in that time.
When it's done, you can check the image by running `docker images` command.

## Step 4:

Run the docker image by typing `docker run -t --name CONTAINER_NAME -publish=9999:9999 IMAGE_NAME`.
You should see it is starting. It will execute our CMD section in our Dockerfile.

## Step 5:

You will be notified when the server is ready. Check your terminal and find the `http://127.0.0.1:9999/tree?token=` line. Copy all after the equal sign and get back to your running server by typing `http://127.0.0.1:9999`. Then put your token line into the related section and create a password.

Congratz.

Now we can run our project on Docker.

## Useful commands after creating a container:

- Starting an existing container: `docker start CONTAINER_NAME`

- Stopping a running container: `docker stop CONTAINER_NAME`

- Removing a container: `docker rm CONTAINER_NAME`

- Removing an image: `docker rmi IMAGE_NAME` (You should remove the container first if the image you want to remove is being used on.)

- Inspecting a container: `docker inspect CONTAINER_NAME`

- To see which containers are running: `docker ps`

- To see all of your containers (running/stopped): `docker ps --all`

- Fetch and follow the logs of a spesific container: `docker logs -f CONTAINER_NAME`

- View resource usage stats: `docker container stats`