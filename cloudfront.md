# AWS CloudFront Demo
- In S3 create bucket to hold the same index.html and error.html files 
- This html files are not available to public.
- to serve these files to public we create Cloudfront distribution. 
- from cloudfron service, select create cloudfront distribution
- Origin domain: select the s3 bucket
- Origin access section: select Origin access control settings (recommended)
- Create origin access control: create control settings
- keep default and create
- Message:
    ```shell
    "You must update the S3 bucket policy
    CloudFront will provide you with the policy statement after creating the distribution."
    ```
 - web application firewall : no
 - default root object : index.html
 - keep everything else as default 
 - create distribution
 - copy policy from the blue notification , from the same notification bar click on "Go to s3 bucket permission to update policy"
 - it takes you to bucket permission tab, bucket polict , edit , paste, save changes.
 - to test the distribution , go to the distribution , general , copy "Distribution domain name"
 - paste in the browser 
