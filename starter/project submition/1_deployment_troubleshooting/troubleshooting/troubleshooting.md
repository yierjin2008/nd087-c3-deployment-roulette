1. By running `kubectl logs <hello_world_pod_name>`, the health check fails and return 500 error indicating the end point is not reachable, and something is wrong on the internal web server.
   see "before.png".
2. The health check failure also seen from the AWS console, hello-world load balancer. see "LB screenshot.png"
3. By looking into the hello.yml, I found the http port is set to 9000 instead of 80, by fixing this issue, the health check passed. see "after.png"
