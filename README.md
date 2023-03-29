
![Cloud](https://user-images.githubusercontent.com/36457009/228533629-a1fbe773-7706-4f53-b34d-d73ce10123e6.png)

Hello! 

Thank you for considering joining our team! 


We're a hosting company that offers cloud-based WordPress hosting services. As an SRE, you'll play an important role in improving our monitoring system, incident response processes, and system stability, as well as optimizing performance. 

## Rules

We have two challenges for you to show off your skills. The first challenge will test your incident handling and troubleshooting skills. We're looking for a detailed document with your reply. The second challenge is a coding task, and we're looking for a script file as your solution.
You have to fork this repository to complete the following challenges in your own GitHub account.

We understand that your time is valuable, so we don't want to take up too much of it. We ask that you spend no more than 2-3 hours on these challenges.

Let's see what you got!


#### Where to start

- Make a fork of this repository. 
- Create a branch for your updates. 
- Commit a document with your answers and script.


#### Deliverability

Share the link to your repository with us.


## Incident task description

### Setup

Our hosting service uses a Kubernetes cluster to serve thousands of customer websites. We have a customer dashboard app where customers can register their accounts, purchase and manage their WordPress service. The dashboard app has different management panels, such as backup creation and resource usage. We use the HAproxy Ingress controller to configure the HAProxy instance that routes incoming traffic to websites' pods. The HAproxy Ingress deployment runs on 2 replicas. We also use Prometheus, Alertmanager, and Grafana to collect and monitor metrics from the cluster and applications.

### Issue 1

You notice a surge in traffic going to the cluster. Due to the high load, the HAproxy pods can't handle all the requests, which affects the load time of customer websites.

#### Task

Your task is to describe the steps you'd take to handle the incident and investigate the issue. List action items that should be taken to detect such issues in the future. 

#### Desired Outcome

We want you to describe the incident handling process and troubleshooting steps. The reply should contain but not limited to answers to the following questions:
- How would you determine if the load is legitimate or if there's a DDoS attack?
- How would you mitigate the load?
- Suggest several actions to better cope with high traffic.
- What automated remediation could be configured?


### Issue 2

As part of the on-call rotation, you're on duty right now. It's after hours, and the first line of customer support has reached out to you. They've let you know that the backup creation feature in the dashboard app isn't working.

#### Task

Your job is to figure out how serious the incident is and come up with a plan to deal with it.

#### Desired Outcome:

We want you to write down your steps on this incident handling. They should include:
- Evaluation of the severity of the incident.
- Description of the incident handling and escalation process.

## Coding task description

Develop a Bash script that checks the website’s load time via cURL and sends an alert if the load exceeds a certain threshold.

#### Instructions

- Write a Bash script that uses cURL to get website load time.
- Define a threshold value for the load, beyond which an alert should be sent.
- If the load exceeds the threshold, send a message to a Slack channel using cURL.
- Include comments in your code to explain how it works and how it should be configured.

#### Desired outcome

The Bash script you developed.

**Notes**: It is not needed to use a real Slack account/channel. You may use some fiction names.
You may adapt the script using different tooling if you feel it satisfies the task purpose better.
