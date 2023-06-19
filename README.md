# Forklift

The forklift image provides utilities to facilitate lifting and dropping archived
Docker images from a Microbox warehouse.

#### Usage

Drop an image:

```
docker run \
  --rm \
  -i mubox/forklift \
  drop \
    archive=1234 \
    token=abcd \
    host=1.2.3.4 \
      | docker load
```

Lift a new image:

```
docker \
  save \
  ubuntu \
  | docker \
      run \
      --rm \
      -i mubox/forklift \
      lift \
        archive=1234 \
        token=abcd \
        host=1.2.3.4
```

Lift an image with a previous one:

```
docker \
  save \
  ubuntu \
  | docker \
      run \
      --rm \
      -i mubox/forklift \
      lift \
        archive=1234 \
        previous=2345 \
        token=abcd \
        host=1.2.3.4
```
