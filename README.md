# odsetdocker

To build the Docker image
```
docker build -t stevetsa/odsetdocker .
```
To run the Docker image
```
docker run -v C:\Users\...\odsetdocker:/home/jovyan/work/ -p 8888:8888 -it stevetsa/odsetdocker
docker run -v C:\Users\...\odsetdocker:/home/jovyan/work/ -p 8888:8888 -it stevetsa/odsetdocker /bin/bash
```

See my notebook! [![Binder](https://mybinder.org/badge_logo.svg)](https://mybinder.org/v2/gh/stevetsa/odsetdocker/main)
