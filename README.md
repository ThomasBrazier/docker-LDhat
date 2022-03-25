# docker-LDhat

This image is built on Debian (Bullseye) and the g++ compiler.

The docker contains:
- LDhat
- LDhot

## Build

I built the image by doing

```
docker build -t tombrazier/ldhat .
```

And then pushed to dockerhub

```
docker push tombrazier/ldhat
```

## Usage

LDhat and LDhot are in `/LDhat`and `/LDhot`respectively.

The working directory is `/mnt`.



