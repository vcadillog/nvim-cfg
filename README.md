# nvim-cfg

## Docker instructions:

create image:
docker build -t workspace .

create container:
docker run -d -p 8080:8080 --name workspace workspace

link to a local dir:
docker run -d -p 8080:8080 --name workspace -v "${PWD}:/app" workspace

open container:
docker exec -it workspace /bin/bash
