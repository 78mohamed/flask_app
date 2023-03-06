FROM python:3.6

#most flask apps are exposed on port 500

EXPOSE 5002

#make a working directory

WORKDIR /opt/app

#install the requirments

RUN pip install flask flask-mysql

#copy the file

COPY . /opt/app

#run the app

CMD python -m flask run --host=0.0.0.0 --port=5002


