1. By running `kubectl logs <hello_world_pod_name>`, the health check fails and return 500 error indicating the end point is not reachable, and something is wrong on the internal web server.
   see "before.png".
2. The log show that failed health check you want to ping /healz, indicating a fault health check path.
3. Fixed the health check path and redeploy the hello-world application, then run the log command again, see screenshot "after.png"
