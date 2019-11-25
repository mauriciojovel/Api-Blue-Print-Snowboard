# Snowboard docker example
The following project is set to use [snowboard project](https://github.com/bukalapak/snowboard) with docker.

## Dev enviroment
* Install docker.

## Running the project
To run the project execute the following commands:
```bash
$ docker build -t api/jsonblueprint .
$ docker run --rm -it -p 80:8088 -p 81:8087 api/jsonblueprint
```
You can use the url [http://localhost/](http://localhost/) to see the api documentation, if you need update the documentation, edit the **example.apib** and after that execute the commands to build the image again.

> The documentation port will be the 8088, and the mock will be 8087
