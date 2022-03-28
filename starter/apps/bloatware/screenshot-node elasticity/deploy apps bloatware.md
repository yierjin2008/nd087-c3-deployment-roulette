troubleshotting process

1. Run `kubectl get pods --all-namespaces`, show that multiple pods are in pending states,
indicating the lack of ec2 resources
2. Change `eks.tf` configurations and increase the disired size and max size of the EKS cluster. 
This triggers the EC2 isntance to scale out. tow more EC2 instances are provisioned after the
configurations change. 
3. Re deploy the bloatware app and run `kubectl get pods --all-namespaces` command, 
indicating the previous pending pods are in running states. 
4. This can also be automated by setting up autoscaling group. 