# ECR Demo

## The Scensrio

We will pull sample Docker image from docker hub and register it in AWS using ECR option in ECS.

1. pull from docker hub

```shell
    $ docker image pull hello-world
```

2. to see the docker images run


```shell
    $ docker images
```

3. from ECS open ECR
    - Repositories , create repository
    - make it public
    - give the repository a name : hello-world
    - everything else default 
    - create repository
    - after creation Select the repositories and select: View Push Commands.
    - In our case we dont have to run the step 2 (2.Build your Docker image using the following command) becasue we already have the image
    - after pushing is completed , we copy the URL to use it with the ECS (task definition in the container sections)