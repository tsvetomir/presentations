
### Build Container Image
`docker build -t node-app .`

### List Container Layers
`docker history node-app`

### Run Container Once
`docker run --rm --init -it -p 3000:3000 node-app`
