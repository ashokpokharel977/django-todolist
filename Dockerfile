# The first instruction is what image we want to base our container on
# We Use an official Python runtime as a parent image
FROM python:3.5
RUN sudo apt-get install python3-tk -y

# The enviroment variable ensures that the python output is set straight
# to the terminal with out buffering it first
ENV PYTHONUNBUFFERED 1

# create root directory for our project in the container
RUN mkdir /code

# Set the working directory to /music_service
WORKDIR /code	

# Copy the current directory contents into the container at /music_service
ADD . /code/

CMD ["python", "mysite/manage.py", "runserver", "0.0.0.0:80"]
