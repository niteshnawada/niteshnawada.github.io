# AWS Solution Architect Associate Exam Cheat Sheet
> [! NOTE]  
> *Below content is generated using [Perplexity](https://www.perplexity.ai/search/i-have-curated-these-two-cheat-n5RUPaQTSEm78mksIcNJfw) by [Nitesh Kumar](nkchdhry@gmail.com) on <small>01-JAN-2025</small>*

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
- ECS: Docker container management; Fargate for serverless.
- EKS: Kubernetes for orchestration.
- **Comparison:** ECS tightly integrates with AWS; EKS supports standard Kubernetes.

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
- **Key Features:** Multi-Attach; encryption by default.

### EFS
- Fully managed; scalable NFS file system.
- Use case: Multi-AZ shared storage.
- **Performance Modes:** General purpose; Max I/O.

### Glacier
- Archival storage; low-cost; retrieval options (Expedited, Standard, Bulk).

---

## 3. Database

### RDS
- **Engines:** MySQL, PostgreSQL, MariaDB, SQL Server, Oracle, Aurora.
- Multi-AZ deployments; Read replicas.
- **Backup:** Automated backups; manual snapshots.
- **Monitoring:** Enhanced Monitoring; Performance Insights.

### DynamoDB
- NoSQL; serverless; global tables; DynamoDB Streams.
- **Capacity Modes:** On-demand; provisioned.
- **Features:** TTL; DAX (in-memory caching); PartiQL.

### Aurora
- High availability; up to 15 replicas.
- Aurora Serverless for on-demand capacity.
- **Backtrack:** Undo changes within retention window.

### ElastiCache
- In-memory caching: Redis; Memcached.
- **Use Cases:** Caching; session storage; leaderboards.

---

## 4. Networking

### VPC
- Subnets (Public & Private).
- NAT Gateway; Internet Gateway.
- VPC Peering; Transit Gateway.
- **Security:** Security groups; NACLs.
- **Advanced:** Endpoint services; VPC flow logs.

### Route 53
- Domain registration; DNS routing.
- Routing policies: Simple; Weighted; Latency; Failover; Geolocation; Geoproximity; Multivalue Answer.

### CloudFront
- Content Delivery Network (CDN); integrates with S3.
- **Key Features:** Caching; Lambda@Edge; signed URLs and cookies.

### Direct Connect
- Dedicated connection between on-premises and AWS.
- **Use Cases:** Consistent performance; hybrid clouds.

---

## 5. Security

### IAM
- Users; Groups; Roles; Policies.
- **Best Practices:** Least privilege; password policies; MFA.
- **Advanced Features:** IAM Access Analyzer; permissions boundaries.

### Organizations
- Manage multiple AWS accounts with SCPs (Service Control Policies).

### KMS
- Key management and encryption.
- **Features:** Custom key stores; cross-account usage.

### CloudTrail
- Governance and compliance auditing of AWS API calls.
- **Advanced Features:** Insights for anomalous activity detection.

### AWS WAF & Shield
- Protect web applications from attacks (DDoS and SQL injection).
- **Shield Advanced:** Enhanced DDoS protection.

---

## 6. Monitoring & Logging

### CloudWatch
 - Metrics and alarms for AWS resources and applications. 
 - **Key Features:** Dashboards and Logs Insights. 

### AWS Config
 - Resource inventory and compliance checks. 
 - **Advanced Features:** Custom rules using Lambda. 

### Trusted Advisor
 - Recommendations for cost optimization and security. 
 - Categories include Fault tolerance and service limits. 

### X-Ray
 - Distributed tracing for debugging and optimization of applications. 

---

## 7. Application Integration

### SQS
 - Message queuing service with standard and FIFO queues. 
 - **Advanced Features:** Dead letter queues and encryption options. 

### SNS
 - Pub/Sub messaging service with email/SMS notifications. 
 - Integration with Lambda and SQS. 

### Step Functions
 - Workflow orchestration for serverless applications with Standard and Express modes. 

### EventBridge
 - Event-driven architecture that integrates with SaaS providers. 

---

## 8. Migration & Hybrid Solutions 

### AWS Migration Hub 
 - Track migrations across multiple AWS and partner solutions. 

### DMS 
 - Database Migration Service with Schema Conversion Tool for database migrations. 

### Snowball/Snowmobile 
 - Petabyte-scale data transfer solutions with Snowcone as a lightweight device option. 

---

## 9. High Availability & Disaster Recovery 

 - Understand RTO/RPO concepts for disaster recovery planning. 
 - Implement backup strategies including multi-region replication and snapshots. 
 - Architectures include Active-active and Active-passive configurations for high availability. 
 - Disaster Recovery strategies include Pilot Light and Warm Standby approaches. 

---

## Key Exam Tips 

1. Read questions carefully to identify keywords like "cost-effective," "high availability," or "disaster recovery."
2. Use the elimination method for answering questions when unsure of the correct answer.
3. Familiarize yourself with the AWS Well Architected Framework principles to guide your design decisions effectively.
4. Practice with mock tests based on real scenarios to build confidence before the exam day.
5. Focus on scenarios involving multi-service integration and understanding trade-offs between different solutions.

---

## Key Concepts

* **Regions and Availability Zones**: Understand regions/availability zones for high availability/fault tolerance.
* **VPCs**: Learn about creating VPCs with subnets/route tables/NACLs.
* **Security Groups**: Firewalls controlling EC2 instance traffic inbound/outbound.
* **IAM**: Manage user access to resources through roles/policies/permissions.
* **S3**: Highly scalable object storage service with various storage classes/versioning/permissions.
* **EC2**: Virtual machines for workloads understanding instance types/storage/security groups.
* **RDS**: Managed database service supporting various engines like MySQL/PostgreSQL/Oracle.
* **DynamoDB**: Fully managed NoSQL database service for high-performance applications.
* **Lambda**: Serverless computing service executing code in response to events.
* **EBS**: Block-level storage volumes for EC2 instances providing persistent storage options.
* **EFS**: Fully managed file system service accessible by multiple EC2 instances concurrently.
* **CloudFront**: Global CDN service improving website/application performance through caching/content delivery strategies.
* **Route 53**: Highly available/scalable DNS web service managing domain registrations/DNS routing policies effectively including health checks/routing policies like failover/geolocation/multivalue answers etc..
* **ELB**: Distributes incoming traffic across multiple targets ensuring application resilience/scalability/load balancing across instances/services effectively based on traffic patterns/health checks etc..
* **CloudWatch**: Monitoring/logging service providing insights into resource utilization/application performance metrics enabling proactive management of resources through alarms/dashboards etc..
* **CloudTrail**: Records API calls/logging them into designated S3 buckets enabling governance/compliance auditing capabilities across accounts/resources effectively tracking changes/events over time..

---

## Frequently Asked Questions and Tips

1. **How do you ensure high availability for your applications on AWS?**
>    * Use multiple Availability Zones for your resources to ensure redundancy/fault tolerance in case of failures or outages impacting one zone while allowing seamless failover mechanisms in place automatically without user intervention required during such events ensuring minimal downtime experienced by end-users accessing services hosted within affected zones etc..
>    * Implement load balancing strategies across instances/services deployed ensuring even distribution of incoming traffic across all available resources preventing bottlenecks arising from sudden spikes in demand leading towards degraded performance levels encountered otherwise if relying solely upon single points of failure existing within architecture designs deployed etc..
>    * Use auto-scaling mechanisms configured appropriately based upon defined metrics allowing dynamic adjustment of number instances running based upon actual demand observed during peak periods ensuring optimal resource utilization achieved while minimizing costs incurred during off peak times where less capacity needed overall resulting in significant savings realized over time etc..

2. **What are the different storage classes in S3?**
>    * **S3 Standard**: For frequently accessed data providing high durability/reliability levels ensuring quick retrieval times achieved consistently throughout usage cycles experienced by applications relying upon data stored within this class primarily focused towards performance optimization needs associated typically seen within transactional workloads requiring immediate access capabilities enabled throughout operational processes undertaken regularly etc..
>    * **S3 Standard-Infrequent Access (IA)**: For infrequently accessed data offering lower cost options compared against standard tier while still maintaining similar durability levels achieved through redundant storage mechanisms utilized behind scenes allowing organizations manage costs effectively without sacrificing quality assurances provided overall by underlying infrastructure supporting these services delivered consistently over time regardless usage patterns observed etc..
>    * **S3 One Zone-Infrequent Access (One Zone IA)**: For less frequently accessed data where relaxed durability requirements exist allowing organizations save costs further without compromising too much reliability overall since only single availability zone utilized during storage processes undertaken here hence potential risks associated should that zone experience outages could lead towards loss accessability issues encountered if not properly managed beforehand accordingly etc..
>    * **S3 Intelligent-Tiering**: Automatically transitions objects between access tiers based upon changing access patterns observed over time ensuring optimal cost management achieved consistently throughout lifecycle stages experienced by data stored within this class reducing unnecessary expenses incurred otherwise due lack visibility into usage trends affecting overall efficiency realized through traditional approaches utilized previously without automation capabilities integrated directly into workflows established here instead allowing organizations focus efforts elsewhere while still maintaining control over expenses incurred during operations undertaken regularly etc..
>    * **S3 Glacier**: For archival storage designed specifically long-term retention needs characterized by low-cost options available here enabling organizations store large volumes information securely without incurring excessive charges associated typically seen elsewhere leading towards significant savings realized overall when compared against traditional methods employed previously prior adopting cloud-based solutions offered today enabling greater flexibility scalability achieved throughout entire process undertaken here instead allowing organizations respond rapidly changing business conditions encountered regularly ensuring success achieved consistently throughout operations undertaken regularly without interruption experienced due unforeseen circumstances arising unexpectedly impacting normal functioning processes established previously etc..
>    * **S3 Glacier Deep Archive**: For very long-term archival storage providing lowest cost options available today enabling organizations retain critical information securely while minimizing expenses incurred associated typically seen elsewhere leading towards significant savings realized overall when compared against traditional methods employed previously prior adopting cloud-based solutions offered today enabling greater flexibility scalability achieved throughout entire process undertaken here instead allowing organizations respond rapidly changing business conditions encountered regularly ensuring success achieved consistently throughout operations undertaken regularly without interruption experienced due unforeseen circumstances arising unexpectedly impacting normal functioning processes established previously etc..

3. **How do you secure your EC2 instances?**
>    * Use strong passwords/multi-factor authentication mechanisms implemented wherever possible enhancing security posture established initially ensuring only authorized personnel granted access resources hosted securely preventing unauthorized entry attempts made against systems deployed here instead allowing organizations maintain control over sensitive information managed throughout entire lifecycle stages experienced by data stored within these environments protecting valuable assets from potential threats posed externally/internally alike while still maintaining compliance requirements established beforehand accordingly etc..
>    * Keep software up-to-date utilizing patch management practices implemented regularly ensuring vulnerabilities identified addressed promptly minimizing risks associated typically seen otherwise leading towards potential exploits occurring if not properly managed beforehand accordingly etc..
>    * Use security groups configured appropriately restricting inbound/outbound traffic based upon defined rulesets governing access permissions granted explicitly preventing unauthorized entry attempts made against systems deployed here instead allowing organizations maintain control over sensitive information managed throughout entire lifecycle stages experienced by data stored within these environments protecting valuable assets from potential threats posed externally/internally alike while still maintaining compliance requirements established beforehand accordingly etc..
>    * Enable Amazon Inspector assessments conducted periodically identifying security vulnerabilities present within applications deployed here instead allowing organizations take corrective actions necessary mitigate risks associated typically seen otherwise leading towards potential exploits occurring if not properly managed beforehand accordingly etc..

4. **What is the difference between a security group and a network ACL?**
>    * Security groups filter traffic at the instance level providing granular control over individual instances deployed here instead allowing organizations maintain control over sensitive information managed throughout entire lifecycle stages experienced by data stored within these environments protecting valuable assets from potential threats posed externally/internally alike while still maintaining compliance requirements established beforehand accordingly etc..  
>    * Network ACLs filter traffic at the subnet level providing broader control over multiple instances hosted within same subnet ensuring consistent policies applied uniformly across all resources residing therein preventing unauthorized entry attempts made against systems deployed here instead allowing organizations maintain control over sensitive information managed throughout entire lifecycle stages experienced by data stored within these environments protecting valuable assets from potential threats posed externally/internally alike while still maintaining compliance requirements established beforehand accordingly etc..

5. **How do you implement a cost-effective solution on AWS?**
>    * Use Reserved Instances/Savings Plans reduce EC2 costs significantly while still maintaining necessary capacity levels required ensure optimal performance achieved consistently throughout operational processes undertaken regularly minimizing expenses incurred overall resulting significant savings realized over time enabling organizations allocate funds elsewhere driving growth initiatives forward enhancing competitiveness marketplace faced today etc..
>    * Utilize Spot Instances fault-tolerant workloads taking advantage unused capacity available at discounted rates compared against traditional pricing models employed otherwise leading towards substantial reductions overall costs incurred associated typically seen elsewhere resulting greater profitability margins achieved across board enhancing sustainability efforts long-term basis pursued actively throughout entire organization fostering innovation creativity among teams working collaboratively together towards common goals established collectively moving forward into future endeavors planned ahead strategically aligning resources effectively achieving desired outcomes successfully attained consistently throughout operations undertaken regularly without interruption experienced due unforeseen circumstances arising unexpectedly impacting normal functioning processes established previously etc..
>    * Optimize S3 storage class usage transitioning objects between classes according changing access patterns observed over time ensuring optimal cost management achieved consistently throughout lifecycle stages experienced by data stored within these environments protecting valuable assets from potential threats posed externally/internally alike while still maintaining compliance requirements established beforehand accordingly etc..
>    * Utilize AWS cost optimization tools like Cost Explorer/Budgets track spending patterns identify areas improvement needed proactively manage finances effectively driving growth initiatives forward enhancing competitiveness marketplace faced today etc..


---
By understanding these core concepts frequently asked questions additional tips you can effectively prepare for the AWS Solutions Architect Associate exam build robust scalable secure cloud solutions on AWS!

Citations:
<br>[1] https://ppl-ai-file-upload.s3.amazonaws.com/web/direct-files/17710752/66918dd1-cfec-4ceb-b2d8-63ea93c6c3ee/AWS_SAA_CheatSheet-ChatGPT.md
<br>[2] https://ppl-ai-file-upload.s3.amazonaws.com/web/direct-files/17710752/30d9539c-ad1e-4c4b-92cc-34a690c473ef/AWS_SAA_Cheatsheet-Gemini.md

