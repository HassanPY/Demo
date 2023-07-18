# AWS Global Accelerator

- Creates 2 EC2s in 2 different regions, use the script in ec2script.txt when you create the instance
<span style="color:red">
We need to change the configuration file of php in each ec2 instance
</span>
- Global Accelerator (GA) is a global service.
- Create accelerator
- Name : choose name
- Accelerator type: standard
- Next
- Listeners
- ports: 80,443
- protocol: TCP
- client affenity: no changes
- Next
- Region: Select the first regine where resources are located
- Add endpoint group, select the second region
- everything elase, default
- next
- addpoints for each reagin, 
- endpoint type :in our case ec2 instance
- endpoint the instance
- create accelerator 
- copy the DNS name and run the following command on terminal:

```shell
dig <DNS>
```
- use the dns on the browser it will open the ec2 site which is closer to your region.
- if we use VPN for different location it will open the closer ec2 webapp.


