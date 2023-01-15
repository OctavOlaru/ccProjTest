# init a base image (Alpine is small Linux distro)
FROM python:3.6.1-alpine
# update pip to minimize dependency errors 
RUN pip install --upgrade pip
# define the present working directory
WORKDIR /flaskProj
# copy the contents into the working dir
ADD . /flaskProj
# run pip to install the dependencies of the flask app
RUN pip3 install -r requirements.txt
# define the command to start the container
CMD ["python3","main.py"]
