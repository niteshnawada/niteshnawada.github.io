<!--
PROMPT:
    I am appearing for AWS SAA C03 exam today evening. Please help me finalize my preparation and score beyond 
85% consistently.

    I have attached (3 files) feedback for recent mock test (and practice test) I have given. Please review 
these and then provide a revision material that I can go through in 15-20 minutes a few times during the day and 
before exam. 

    I last revision these format worked nicely for me, given it covers all the topics where I fall short in 
mock/practice test 
    - Ultra-short memory hooks 
    - If you see this phrase  pick this service
    - 20 rapid-fire exam traps
    - AWS services that cover 75% of questions

    for each service that cover 75% of questions - please add key concepts in short texts that meaningfully 
boosts exam score

    for "If you see this phrase  pick this service" - please cater for alternatives for VPC, RDS, Storage, 
Gateway and data transfer or database migration services where exam questions tries to trick me
-->

# AWS SAA-C03: **Target 85%+**  Final Rapid Revision Pack

Got it. Youre **hours away from SAA-C03**, so this is a **high-yield, exam-scoring revision pack** distilled 
from **your 3 mock/practice reviews** and tuned to the **exact traps you fell for**.
This is designed to be **read end-to-end in ~1520 minutes**, **23 times today**, and once just before the exam.

---

## 1 Ultra-Short Memory Hooks (Your Weak + High-Frequency Areas)

### **Networking / Hybrid**

* **VGW = AWS side, CGW = customer side**
* **DX alone  encrypted  add VPN**
* **Site-to-Site VPN = fast to start, variable latency**
* **Transit Gateway = hub, not encryption**
* **VPN CloudHub = branch-to-branch**

### **VPC Access**

* **AWS service private access  VPC Endpoint**
* **Private subnet  NAT = outbound only**
* **Public subnet  IGW**
* **PrivateLink = service-to-service, no internet**

### **Compute**

* **User Data = root + runs only on first boot**
* **Cluster Placement Group = low latency / HPC**
* **Instance Store = cheap + fast + ephemeral**
* **Spot Fleet > Spot Instance for resilience**

### **Storage**

* **NFS hybrid  Storage Gateway (File)**
* **Windows shared storage  FSx Windows**
* **Linux shared storage  EFS**
* **Accidental delete  S3 Versioning + MFA Delete**

### **Databases**

* **Aurora reads  Reader endpoint**
* **Multi-AZ  read scaling**
* **DAX = DynamoDB cache, no SQL**
* **ElastiCache = in-memory + SQL cache**

### **Messaging / Streaming**

* **Streaming  Kinesis**
* **Notifications  SNS**
* **Decouple  SQS**
* **Streaming + notify  Kinesis + SNS**

---

## 2 If You See This Phrase  Pick This Service (With Traps & Alternatives)

### **VPC / Connectivity**

* *Private access to AWS service*  **VPC Endpoint**
* *Branch offices talk to each other*  **AWS VPN CloudHub**
* *Dedicated + encrypted + low latency*  **AWS Direct Connect + VPN**
* *Trap:* Transit Gateway alone  (no encryption)

### **Databases (Big Trap Area)**

* *Read scaling Aurora*  **Aurora Read Replica**
* *High write + read load*  Reader endpoint
* *Trap:* Multi-AZ standby reads 

### **Storage**

* *On-prem NFS  cloud, cheap*  **AWS Storage Gateway File Gateway**
* *Windows DFS / SMB*  **Amazon FSx for Windows File Server**
* *Trap:* EFS for Windows 

### **Gateway & Migration**

* *Minimal downtime migration*  **AWS DataSync**
* *Database migration live*  **AWS DMS**
* *Trap:* Snowball for live DB 

### **Data Transfer**

* *Large offline data*  **AWS Snowball**
* *Continuous sync*  DataSync
* *Hybrid file access*  Storage Gateway

---

## 3 20 Rapid-Fire Exam Traps (Read Twice)

1. Multi-AZ  read scaling
2. Direct Connect  encrypted
3. Transit Gateway  VPN
4. User Data  every reboot
5. DAX  SQL cache
6. NAT  inbound traffic
7. IGW  private subnet
8. S3  POSIX filesystem
9. EFS  Windows SMB
10. FSx Windows  NFS
11. Spot Instance  resilient
12. Spot Fleet = auto-replace
13. CloudFormation  low downtime
14. SNS  queue
15. SQS  streaming
16. Kinesis  notification
17. Reader endpoint  writer
18. Instance Store  durable
19. MFA Delete only with versioning
20. VPC Endpoint  Internet Gateway

---

## 4 AWS Services That Cover ~75% of Exam Questions (With Score-Boosters)

### **Compute**

* **Amazon EC2**
  *Key:* placement groups, instance store, Spot vs RI
* **AWS Lambda**
  *Key:* event-driven, no servers, cost-per-ms

### **Storage**

* **Amazon S3**
  *Key:* versioning, lifecycle, MFA delete
* **Amazon EFS**
  *Key:* Linux NFS, multi-AZ
* **Amazon FSx**
  *Key:* Windows SMB vs Lustre (HPC)

### **Databases**

* **Amazon Aurora**
  *Key:* reader endpoint, replicas, failover
* **Amazon DynamoDB**
  *Key:* DAX, global tables

### **Networking**

* **Amazon VPC**
  *Key:* IGW vs NAT vs Endpoint
* **AWS Direct Connect**
  *Key:* add VPN for encryption
* **AWS Transit Gateway**
  *Key:* hub-and-spoke

### **Messaging / Streaming**

* **Amazon SQS**  decouple
* **Amazon SNS**  notify
* **Amazon Kinesis**  streaming

---

##  Final Exam Strategy (Very Important)

* Eliminate **2 wrong answers first**
* Look for **keywords**: *least operational*, *most cost-effective*, *lowest downtime*
* If **hybrid**  think **VPN / DX / Gateway**
* If **reads slow**  think **replica**, not Multi-AZ
* If **AWS service access from VPC**  **Endpoint**

---

<div style="page-break-after: always;"></div>

<!-- compress this into a 2-page printable cheat sheet -->
# AWS SAA-C03  **2-Page Ultra-Compressed Cheat Sheet**

##  PAGE 1  CORE MEMORY HOOKS + SERVICE PICKERS

### 1 Ultra-Short Memory Hooks (Read Fast)

#### **Networking / Hybrid**

* **VGW = AWS side | CGW = On-prem side**
* **DX  encrypted  add VPN**
* **Site-to-Site VPN = quick, variable latency**
* **Transit Gateway = hub only**
* **Branch  Branch  VPN CloudHub**

#### **VPC Access**

* **Private access to AWS service  VPC Endpoint**
* **Private subnet outbound  NAT**
* **Public subnet inbound/outbound  IGW**
* **PrivateLink = no internet, service-to-service**

#### **Compute**

* **User Data = root + runs once (first boot)**
* **Cluster Placement Group = low latency / HPC**
* **Instance Store = fastest + cheapest + ephemeral**
* **Spot Fleet > Spot Instance (resilience)**

#### **Storage**

* **Hybrid NFS  Storage Gateway (File)**
* **Windows shared storage  FSx Windows**
* **Linux shared storage  EFS**
* **Accidental delete  S3 Versioning + MFA Delete**

#### **Databases**

* **Aurora read scaling  Reader endpoint**
* **Multi-AZ  read scaling**
* **DAX = DynamoDB cache (NO SQL)**
* **SQL query caching  ElastiCache**

#### **Messaging / Streaming**

* **Streaming  Kinesis**
* **Notifications  SNS**
* **Decouple  SQS**
* **Streaming + notify  Kinesis + SNS**

### 2 If You See This Phrase  Pick This (Exam Gold)

#### **VPC / Connectivity**

* *Private AWS service access*  **VPC Endpoint**
* *Dedicated + encrypted + low latency*  **AWS Direct Connect + VPN**
* *Branch offices communicate*  **AWS VPN CloudHub**
* *Trap:* Transit Gateway alone 

#### **Databases (High-Trap Zone)**

* *Separate reads from writes*  **Aurora Read Replica**
* *High read traffic*  **Reader endpoint**
* *Trap:* Read from Multi-AZ standby 

#### **Storage / Hybrid**

* *On-prem NFS, cheap, scalable*  **Storage Gateway (File)**
* *Windows DFS / SMB*  **Amazon FSx for Windows File Server**
* *Trap:* EFS for Windows 

#### **Migration / Transfer**

* *Live DB migration*  **AWS Database Migration Service**
* *Ongoing sync*  **AWS DataSync**
* *Offline TBs*  **AWS Snowball**

---

##  PAGE 2  EXAM TRAPS + 75% SERVICES

### 3 20 Rapid-Fire Exam Traps (Memorize)

1. Multi-AZ  read scaling
2. Direct Connect  encrypted
3. Transit Gateway  VPN
4. User Data  every reboot
5. DAX  SQL cache
6. NAT  inbound access
7. IGW  private subnet
8. S3  POSIX filesystem
9. EFS  Windows SMB
10. FSx Windows  NFS
11. Spot Instance  resilient
12. Spot Fleet = auto replace
13. CloudFormation  least downtime
14. SNS  queue
15. SQS  streaming
16. Kinesis  notification
17. Reader endpoint  writer
18. Instance Store  durable
19. MFA Delete only with Versioning
20. VPC Endpoint  Internet Gateway

---

### 4 AWS Services Covering ~75% of Exam

#### **Compute**

* **Amazon EC2**
  Placement groups, Spot vs RI, instance store
* **AWS Lambda**
  Event-driven, serverless, cost per ms

#### **Storage**

* **Amazon S3**
  Versioning, lifecycle, MFA delete
* **Amazon EFS**
  Linux NFS, multi-AZ
* **Amazon FSx**
  Windows SMB vs Lustre (HPC)

#### **Databases**

* **Amazon Aurora**
  Reader endpoint, replicas, failover
* **Amazon DynamoDB**
  DAX, global tables

#### **Networking**

* **Amazon VPC**
  IGW vs NAT vs Endpoint
* **AWS Direct Connect**
  Add VPN for encryption
* **AWS Transit Gateway**
  Hub-and-spoke VPCs

#### **Messaging / Streaming**

* **Amazon SQS**  decouple
* **Amazon SNS**  notify
* **Amazon Kinesis**  streaming

---

##  Final 30-Second Exam Rule

> **If two options work  choose the one with
> less ops, more managed, more AWS-native**

