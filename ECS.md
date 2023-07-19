# Amazon ECS Demo

1. Create Cluster
    - Cluster name: enter a name
    - Networking : keep default
    - Infrastructure : 3 options , Fargate (enabled by default), and you can choose EC2 or anywhere, in this case keep Fargate only.
    - everything elase : keep as it is
    - create (some times you get an error, recreate)
    - Explore the cluster: select Infrastructure tab, you see 2 fargate capacities.


> **_NOTE:_** We will use Amazon ECR Public Gallery to use ready Docker image to use in our demo, in this case we will use NGiNX image as web server.

2. Task Definitions
    - create new task definition
    - task definition family: enter a name
    - open new tab in the browser and open https://gallery.ecr.aws
    - search for Nginx (choose verified version)
    - open Nginx to copy the url.
    - back to task definition
    - enter the name of the container
    - URL : paste the previous copied url
    - everything elase as it is 
    - Next
    - you can change cpu and memory and OS
    - Next
    - review and Create


3. Rut task or Service
    - From cluster
    - Service tab: Create
    - Deploy configuration, Application type: select service
    - Task definition: choose the family
    - service name: enter name
    - Networking: public ip - Enabled
    create new security group or modify the default on , open http port 80
    - everything elase as default
    - deploy or create
    - service created , you should see one task created for that service
    - select the task and copy the public id 
    - open in the browser, shoud see nginx

> **_NOTE:_** To delete the resources , start from stopping the task



