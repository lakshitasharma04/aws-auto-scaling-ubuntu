\# AWS Auto Scaling Web Application (Ubuntu)



\## Overview

This project demonstrates a production-style auto-scaling web architecture on AWS

using an Application Load Balancer (ALB) and Auto Scaling Groups (ASG).

The system dynamically adjusts compute capacity based on CPU utilization

while remaining free-tier safe.



---



\## Architecture

\- Application Load Balancer (public entry point)

\- Auto Scaling Group with Ubuntu EC2 instances

\- Target Group with health checks

\- CPU-based target tracking scaling policy



---



\## Auto Scaling Strategy

\- Metric: Average CPU Utilization

\- Target value: 60%

\- Instance warmup: 300 seconds

\- Minimum instances: 1

\- Maximum instances: 2



---



\## Security Considerations

\- IMDSv2 enforced for EC2 metadata access

\- No SSH required for application access

\- Separate security groups for ALB and EC2 instances



---



\## Validation \& Proof

The following validations were performed:

\- ALB DNS endpoint successfully served traffic

\- Target group health checks reported healthy instances

\- Instance ID and hostname verified via browser

\- Auto scaling validated through CPU load testing



Screenshots are available in the `screenshots/` directory.



---



\## User Data Script

The EC2 instances are bootstrapped using a user-data script

that installs nginx and fetches metadata using IMDSv2.



Script location:





---



\## Future Improvements

\- Request count–based scaling

\- Spot and On-Demand instance mix

\- Containerized deployment using ECS

\- HTTPS using ACM



---



\## Conclusion

This project showcases a real-world AWS auto-scaling setup

with modern security practices and cost-aware design.

