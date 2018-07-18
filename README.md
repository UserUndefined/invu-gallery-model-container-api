## Setup
1. You need Python 3.x with Flask and TensorFlow installed. You can [download ActivePython 3.5](https://www.activestate.com/activepython/downloads) which has all the required dependencies already pre-installed.
2. Clone to repository by clicking the clone button above.
3. Run `python app.py`.

## remove all docker containers (use Powershell command window)
`docker rm -f $(docker ps -a -q)`
or
`docker ps -aq | foreach {docker rm $_}`

## remove all docker images (use Powershell command window)
`docker rmi $(docker images -q)`

## Build the image
`docker build -t userundefined/invu-gallery-model-container-api .`

## Run The Image
`docker run -p 8000:8000 -it userundefined/invu-gallery-model-container-api`
`docker run -p 8000:8000 -d userundefined/invu-gallery-model-container-api`

## Read the container logs
`docker logs [container-id]`

## Get container ID & port number
`docker ps`

## get a list of images
`docker images`

## Push to DockerHub
`docker login`
`docker push userundefined/invu-gallery-model-container-api:latest`


## Usage
Once you've started the service, you can query it on `localhost:8000`. You can either hit it via a web browser, or use `curl` from the commandline. It takes a single parameter `file` which specifies the full path to a local image, so for example:

`[POST] curl http://localhost:8000/upload2`

and provide the image in the payload.

```json
{
  "Tower Bridge": 0.99948, 
  "London Bridge": 0.56948, 
  "Milenium Bridge": 0.11948 
  ]
}
```
