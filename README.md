# Zenmap Docker

Build the Docker image:

    docker build --tag peterstory/zenmap:latest .


## MacOS Instructions

Thanks to [Marc Reichelt](https://medium.com/@mreichelt/how-to-show-x11-windows-within-docker-on-mac-50759f4b65cb):

First, setup XQuartz:

* Install XQuartz
* Enable "Allow connections from network clients" in Preferences, Security
* Restart XQuartz

Next, enable connections to XQuartz and run the Docker image with:

    xhost + 127.0.0.1
    docker run -e DISPLAY=host.docker.internal:0 peterstory/zenmap:latest
