# plantuml-dl-docker

A docker image to download and run PlantUML.

[Docker Hub](https://hub.docker.com/repository/docker/mozgiii/plantuml-dl).

## Usage

```shell
docker run --rm -v "$(pwd):/data" mozgiii/plantuml-dl:latest -tpng /data/file.pu
```
