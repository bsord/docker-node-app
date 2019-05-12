# docker-node-app

![Docker+Node](https://raw.githubusercontent.com/jonfairbanks/docker-node-app/master/logo.jpg)

![](https://img.shields.io/docker/pulls/jonfairbanks/docker-node-app.svg?style=flat)
![](https://img.shields.io/github/license/jonfairbanks/docker-node-app.svg?style=flat)
#### A sample Node.js app in Docker

- Final Image Size: 99MB
- Includes the latest versions of Node, NPM and Yarn
- Runs as a non-root user with PM2

To boot the container: 
`docker run -it -p 3000:8080 --name sample-app jonfairbanks/docker-node-app`

To attach to a running container:
`docker exec -it sample-app /bin/ash`

To deploy this app into a pre-existing Kubernetes instance:
`kubectl apply -f docker-node-app.yaml`

This application is also available from Dockerhub under [jonfairbanks/docker-node-app](https://hub.docker.com/r/jonfairbanks/docker-node-app)
