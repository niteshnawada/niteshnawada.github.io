
# AWS Solution Architect Associate Exam Cheat Sheet
> [! NOTE]  
> *Below content is generated using [ChatGPT](https://chatgpt.com/c/67532db1-27b0-8011-8c42-48745d14a8bd) by [Nitesh Kumar](nkchdhry@gmail.com) on <small>11-DEC-2024</small>*

---

## 1. Compute

### Amazon EC2
- **Instance Types:** General purpose, Compute optimized, Memory optimized, Storage optimized, Accelerated computing.
- **Pricing Models:** On-demand, Reserved, Spot, Dedicated Instances, Dedicated Hosts.
- **Auto Scaling:** Launch templates, target tracking, scheduled scaling, predictive scaling.
- **Elastic Load Balancer (ELB):** Types - Application, Network, Gateway.
- **Key Concepts:** Placement groups (Cluster, Spread, Partition).

### Lambda
- **Key Features:** Serverless, event-driven.
- **Integration:** API Gateway, S3, DynamoDB, SNS, SQS, EventBridge.
- **Timeouts and Limits:** Max 15 mins runtime, memory range 128 MB to 10 GB.
- **Deployment:** Versioning, aliases, environment variables.

### ECS & EKS
- ECS: Docker container management, Fargate for serverless.
- EKS: Kubernetes for orchestration.
- **Comparison:** ECS tightly integrates with AWS, EKS supports standard Kubernetes.

### Elastic Beanstalk
- PaaS for application deployment.
- Supports multiple languages and frameworks.

---

## 2. Storage

### S3
- **Storage Classes:** Standard, Intelligent-Tiering, Glacier, Glacier Deep Archive, One Zone IA.
- **Features:** Versioning, lifecycle policies, cross-region replication, bucket policies, Object Lock for WORM.
- **Encryption:** Server-side (SSE-S3, SSE-KMS, SSE-C) and client-side.
- **Performance:** Multi-part uploads, transfer acceleration.

### EBS
- Volume types: General Purpose (gp2, gp3), Provisioned IOPS (io1, io2), Throughput Optimized (st1), Cold HDD (sc1).
- Snapshots: Backup of EBS volumes.
- **Key Features:** Multi-Attach, encryption by default.

### EFS
- Fully managed, scalable NFS file system.
- Use case: Multi-AZ shared storage.
- **Performance Modes:** General purpose, Max I/O.

### Glacier
- Archival storage, low-cost, retrieval options (Expedited, Standard, Bulk).

---

## 3. Database

### RDS
- **Engines:** MySQL, PostgreSQL, MariaDB, SQL Server, Oracle, Aurora.
- Multi-AZ deployments, Read replicas.
- **Backup:** Automated backups, manual snapshots.
- **Monitoring:** Enhanced Monitoring, Performance Insights.

### DynamoDB
- NoSQL, serverless, global tables, DynamoDB Streams.
- **Capacity Modes:** On-demand, provisioned.
- **Features:** TTL, DAX (in-memory caching), PartiQL.

### Aurora
- High availability, up to 15 replicas.
- Aurora Serverless for on-demand capacity.
- **Backtrack:** Undo changes within retention window.

### ElastiCache
- In-memory caching: Redis, Memcached.
- **Use Cases:** Caching, session storage, leaderboards.

---

## 4. Networking

### VPC
- Subnets (Public & Private).
- NAT Gateway, Internet Gateway.
- VPC Peering, Transit Gateway.
- **Security:** Security groups, NACLs.
- **Advanced:** Endpoint services, VPC flow logs.

### Route 53
- Domain registration, DNS routing.
- Routing policies: Simple, Weighted, Latency, Failover, Geolocation, Geoproximity, Multivalue Answer.

### CloudFront
- Content Delivery Network (CDN), integrates with S3.
- **Key Features:** Caching, Lambda@Edge, signed URLs and cookies.

### Direct Connect
- Dedicated connection between on-premises and AWS.
- **Use Cases:** Consistent performance, hybrid clouds.

---

## 5. Security

### IAM
- Users, Groups, Roles, Policies.
- **Best Practices:** Least privilege, password policies, MFA.
- **Advanced Features:** IAM Access Analyzer, permissions boundaries.

### Organizations
- Manage multiple AWS accounts, SCPs (Service Control Policies).

### KMS
- Key management and encryption.
- **Features:** Custom key stores, cross-account usage.

### CloudTrail
- Governance, compliance, and operational auditing.
- **Advanced:** Insights for anomalous activity detection.

### AWS WAF & Shield
- Protect web applications from attacks (DDoS, SQL injection).
- **Shield Advanced:** Enhanced DDoS protection.

---

## 6. Monitoring & Logging

### CloudWatch
- Metrics, alarms, logs.
- **Key Features:** Dashboards, Logs Insights, Contributor Insights.

### AWS Config
- Resource inventory, compliance checks.
- **Advanced:** Custom rules using Lambda.

### Trusted Advisor
- Recommendations for cost optimization, security, performance.
- **Categories:** Fault tolerance, service limits, sustainability.

### X-Ray
- Distributed tracing for debugging and optimization.

---

## 7. Application Integration

### SQS
- Message queuing, standard and FIFO queues.
- **Advanced:** Dead letter queues, encryption.

### SNS
- Pub/Sub messaging, email/SMS notifications.
- **Integration:** Lambda, SQS, HTTP endpoints.

### Step Functions
- Workflow orchestration for serverless apps.
- **Modes:** Standard, Express.

### EventBridge
- Event-driven architecture, integrates with SaaS providers.

---

## 8. Migration & Hybrid

### AWS Migration Hub
- Track migrations across multiple AWS and partner solutions.

### DMS
- Database Migration Service.
- **Advanced:** Schema Conversion Tool.

### Snowball/Snowmobile
- Petabyte-scale data transfer.
- **Snowcone:** Lightweight, portable edge device.

---

## 9. High Availability & Disaster Recovery
- **RTO/RPO:** Understand concepts.
- **Backup Strategies:** Multi-region replication, snapshots.
- **Architectures:** Active-active, active-passive.
- **Disaster Recovery:** Pilot Light, Warm Standby, Hot Standby.

---

## Key Exam Tips
1. Read questions carefully; look for keywords like "cost-effective," "high availability," or "disaster recovery."
2. Use elimination method for options.
3. Familiarize with AWS Well-Architected Framework.
4. Practice with mock tests on real scenarios.
5. Focus on scenarios with multi-service integration and trade-offs.
