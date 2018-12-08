FROM python:3.6.5

LABEL maintainer="userundefined"

RUN apt-get update -y
RUN apt-get install -y build-essential
RUN pip install --upgrade pip

# Copy the current directory contents into the container at /app
COPY ./app /app

WORKDIR /app

RUN pip3 install -r ./requirements.txt
 
# Expose port 8000
EXPOSE 8000

CMD ["python", "app.py"]
