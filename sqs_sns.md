# AWS SQS and SNS Demo

## The Scenario
## Create serveless application SNS, SQS, and Lambda

We're going to create a serverless and
event driven application.
So a user will submit a notification to
an SNS topic when we do that it's going
to be integrated with a queue, in other
words the queue is subscribed to the
topic and the message that we add to the
topic ends up in the queue then sqs is
going to trigger a Lambda function that
function is going to run and it's going
to write some information to cloudwatch
and whatever we put in the topic we're
going to see that in Cloud watch logs so
that's it 

1. SQS service, Create a queue 
    - queue name
    - everything else as it is, no changes
    - create
2. SNS service, create a topic
    - create a topic
    - standard
    - topic name
    - everything else as it is, no changes
    - create
    - create a subscribtion 
    - topic ARN: it is automatically slected 
    - protocol : amazon sqs
    - endpoint: select myqueue
    - everything else as it is, no changes
    - create 
    - SNS needs a permission to the queue
    - copy the ARN of the topic 
    - paste in the write place in the below access policy
    - from SQS copy the queue ARN, and paste in the right place in below access policy


        ```shell
            {
        "Statement": [
            {
            "Effect": "Allow",
            "Principal": {
                "Service": "sns.amazonaws.com"
            },
            "Action": "sqs:SendMessage",
            "Resource": "insert queue ARN here",
            "Condition": {
                "ArnEquals": {
                "aws:SourceArn": "insert topic ARN here"
                }
            }
            }
        ]
        }
        ```
    - copy the above access policy to Access Policy tabe for the queue in the SQS

3. Create function in Lambd
    - use below code (Nodejs 14)


    ```js
        exports.handler = async function(event,  context) {
            event.Records.forEach(record => {
                const { body } = record;
                console.log(body);
            });
            return {};
        }
    ```
    - insert the code in index.js
    - lambda has to get permission to read and delete from the queue
    - Lambda, configuration, Execution Role, click on Role Name value (link)
    - in the new opened tab, Permission, permission policy, add permission , add policy : search for sqs AWSLambdaSQSQueueexecutionRole
    - Create Lambda triger in SQS, go to the Queue, Lambda Trigger , configure lambda function trigger, choose the lambda function and save

4. Test
    - In SNS topic , click Publish Message
    - Enter Subject
    - Messeage Structure: select Identical payload
    - Enter message body , click publish
    - Lambda, Monitor
    - Click view logs in Cloudwatch