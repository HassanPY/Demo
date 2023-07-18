## Create Static Website on S3

- From S3 service choose create bucket
- Give a uniqe name 
- select the region
- Object Ownership : ACLs enabled
- select Bucket owner preferred
- Block Public Access settings for this bucket: Disable Block all public access
- Achnowledge
- Keep everything else to defaule values
- Create.
- open the bucket 
- select properties
- go to : Static website hosting
- Enable
- specify : index.html and error.html
- save the changes
- upload sample objects to the bucket
- select both objects then select action and choose : Make public using ACLs
- to test the website, from bucket , properties, down from static website option , copy the endpoint.

