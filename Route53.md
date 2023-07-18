# Route 53

## Create Hosted Zone
- Domain Name: example1.com
- Type : Public hosted zone
- Create

# Create Record
- Record name : keep empty
- Record type A
- Value: 172.0.1.169 (example ip)
- Routing Policy: Simple routing
- Create
- From Cloud9 terminal type:
    ```shell
    dig example1.com
    ```
# Creat A Record for subdomain
- Record name : myapp
- Record type A
- Value: 172.0.1.168 (example ip)
- Routing Policy: Simple routing
- Create
- From Cloud9 terminal type:
    ```shell
    dig myapp.example1.com
    ```
# Creat CNAME Record , domain to domain

- Record name : empty will give error, so put 'crm' for example
- Record type CNAME
- Value : domain name (myapp.exampl1.com)
- Routing Policy: Simple routing
- Create
If record name left empty you get this error:
    ```shell

    Error occurred
    Bad request.
    (InvalidChangeBatch 400: RRSet of type CNAME with DNS name example1.com. is not permitted at apex in zone example1.com.)
    ```
- From Cloud9 terminal type:
    ```shell
    dig crm.example1.com
    ```

## Create a Static Web Site on S3

Review S3staticweb.md

## Create Alias Records.
To demo alias, create a static web site in S3.

- Delete the previous records
- create record
- keep record name empty.
- choose A record type
- Enable Alias
- Route traffic, choose S3 website
- choose the region where bucket located
- choose s3 endpoint
- Create records.