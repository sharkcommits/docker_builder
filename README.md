# Docker Builder
A simple guide to build your own docker environment.

## Step 1:

Download [Docker](https://www.docker.com) from the official website based on your OS and install it.

## Step 2:

Clone the repository and put your desired files into that folder, such as your csv files, python files for your project.

We are gonna change the *Dockerfile* and make it compatible to our machine learning project.

Since we're working on Python Env. we're not gonna change the first lines.

Open *Dockerfile* and go to the ninth line right below the `COPY ./src ./src` line. We are gonna copy our files through this line. Let's say we have **train.csv**, **test.csv** and **training.py** files in our folder right next to our **Dockerfile**. We need to add one line per file in order to copy them during the building. For example:

`COPY train.csv ./train.csv`
`COPY test.csv ./test.csv`
`COPY training.py ./training.py`

Then, change the *requirements.txt* for your needs. You can add new packages, remove some of them or just leave it as it is. This one contains following Python packages:

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

Run `docker build -t IMAGE_NAME .` command. It will create the image. It might take several minutes based on your packages. You can have a cup of coffee in that time.
When it's done, you can check the image by running `docker images` command.

**A quick note**: You have to change IMAGE_NAME and CONTAINER_NAME sections for your preference. You should pick a name.

## Step 3:

Run the docker image by typing `docker run -t --name CONTAINER_NAME -publish=9999:9999 IMAGE_NAME`.
You should see it is starting. It will execute our CMD section in our Dockerfile.

## Step 4:

You will be notified when the server is ready. Check your terminal and find the `http://127.0.0.1:9999/tree?token=` line. Copy all after the equal sign and get back to your running server by typing `http://127.0.0.1:9999`. Then put your token line into the related section and create a password.

Congratz.

We can access our Jupyter Notebook after running the container by:

`http://127.0.0.1:9999`

## Removing the container:

Open the terminal and just type the following command: 
`docker rm CONTAINER_NAME`

## Removing the image:

You should remove the container first if the image you want to remove is being used on.
`docker rmi IMAGE_NAME`