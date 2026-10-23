# Cloud Networking Capstone: Domain Routing, Security Groups & NGINX on AWS EC2

An end-to-end cloud networking implementation demonstrating DNS resolution, stateful firewall packet filtering, and reverse proxy/web server provisioning on AWS infrastructure.

---

## 1. Project Architecture

The deployment connects a custom top-level domain (`khalidhassan.uk`) to a live Ubuntu cloud instance via DNS A-record mapping, handling raw inbound HTTP traffic on port 80.

```text
+-----------------------------+
|    Client Web Browser       |
+--------------+--------------+
               |
               | 1. Resolves khalidhassan.uk
               v
+-----------------------------+
|    Cloudflare DNS Engine    |
| (Authoritative Nameservers) |
|   Record: A -> <EC2_PUB_IP> |
+--------------+--------------+
               |
               | 2. Returns IPv4
               v
+-----------------------------+
|  Internet Gateway / Route   |
+--------------+--------------+
               |
               | 3. TCP Handshake (SYN -> SYN-ACK -> ACK)
               v
+---------------------------------------------------+
|  AWS EC2 Security Group (Stateful Firewall)      |
|  - Port 22 (SSH)  : Restricted to Admin IP /32   |
|  - Port 80 (HTTP) : Ingress 0.0.0.0/0 (Internet) |
+----------------------+----------------------------+
                       |
                       | 4. Allowed Ingress
                       v
+---------------------------------------------------+
|       Ubuntu 24.04 LTS (t2.micro / t3.micro)      |
|                                                   |
|       +-----------------------------------+       |
|       |        NGINX Web Server           |       |
|       |        (systemd: active/running)  |       |
|       |        Listening on 0.0.0.0:80    |       |
|       +-----------------------------------+       |
+---------------------------------------------------+
