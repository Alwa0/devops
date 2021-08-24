# App_python
App_python is a web application, that shows current time in Moscow

## Project first setup
1. Clone project
`git clone https://github.com/Alwa0/devops.git`
2. Install all libraries
`pip install -r requirements.txt`
3. Run server
`python app_python/manage.py runserver` 
4. Go to http://127.0.0.1:8000/

## Docker
To run the image from dockerhub:
`sudo docker run paukovaa/devops_lab2`

To run the image locally:
`sudo docker run --name django_app -d -p 8000:8000 django_app:latest`
