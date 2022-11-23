KUBERNETES

- Containers are abstraction over build tool and the Kubernetes is the abstraction over the
	said containers
- Also called as Containers Orchestration
					\_	> Auto Scaling
						> Service Discovery
						> Load Balancer
						> Self Healing
						> Zero Downtime Deployment

- Alternatives to Kubernetes
	> Docker Swarm
	> Apache Mesos 
	> Cattle, Nomad, Empire
	> AWS Fargate

-------------------------------------------------	
-	Kubernetes									-
-		\_ Kubernetes Cluster					-
-				\_ Master Nodes					-
-						\_ Worker Nodes			-
-								\_ Pods			-
-------------------------------------------------			

Nodes (Minions)
	- Physical or Virtual machine that Runs the Application
	- Containers are launched on these machines
	- Multiple nodes are availble if any failure occurs

Kubernetes Cluster
	- Set of nodes in one Cluster
	- if one node fail other will take over, ensures Load Balancing
	
Pod
	- Smallest part of Kubernetes
	- Pod is inside a Node
	- Pod is an Object of Kubernetes
	- It is a Single Instace of an Application
	- Each pod has a unique IP Address
	- One Pod cannot have 2 same containers

==================================================================================

Installation KUBERNETES

Minikube > Local Instace of Kubernetes
Kubectl	> Commmand line interface for Kubernetes

- Go to https://kubernetes.io/docs/tasks/tools/install-kubectl-windows/
- Install Chocolatey for windows
	\_ go to https://chocolatey.org/install
		- Go to Powershell as Admin
			> Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1'))

			- restart the Powershell
				> kubectl version --client       [check the version]


- Install Minikube

- go to https://minikube.sigs.k8s.io/docs/start/
- Download the .exe file and install the minikube
- Give the installation path in the Environmental Variable
- Open CMD with Admin
	> minikube start --driver vmware
	OR
	> minikube start

> minikube status

> kubectl get nodes									--- shows info of nodes

> kubectl create deployment hello-node --image=k8s.gcr.io/echoserver:1.4
[creating a deployment to manage a Pod]

> kubectl get deployments
[shows active deployments]

> kubectl get pods
[shows active pods]

> kubectl expose deployment hello-node --type=LoadBalancer --port=8080
[exposes the pod to public internet]
[--type=LoadBalancer means you want to expose your Service outside of the cluster]

> kubectl get services
[Views the services you created]

> kubectl delete services hello-node
> kubectl delete deployment hello-node
[to clean-up the resources in the cluster]

==========================================================================

- [.yaml or .yml] these files are used for Deployments, allows us to define hierarchy 
- Indentation and Case Sensetive

- create a [.yml] file name it as you want and save it with .yml [nginx.yml]
	\_ 
		apiVersion: apps/v1
		kind: Deployment
		metadata:
		    labels:
		        environment: test
		    name: testdeploy
		spec:
		    replicas: 3
		    selector:
		        matchLabels:
		            environment: test
		    minReadySeconds: 10
		    strategy:
		        rollingUpdate:
		            maxSurge: 1
		            maxUnavailable: 0
		        type: RollingUpdate
		    template:
		        metadata:
		            labels:
		                environment: test
		        spec:
		            containers:
		            -   image: nginx:1.16
		                name: nginx

[save and exit and make sure Indentations are Important]

- go to the file path and open CMD 

> kubectl apply -f nginx.yml

> kubectl get all 
[shows all the Pods, Services and ReplicaSet]

> kubectl delete pod testdeploy-586b7f8654-r765f
[deletes a specific Pod]

> kubectl delete rs testdeploy-586b7f8654
[deletes the whole ReplicaSet]

[Even if the replicasset is deleted, Kubernetes will automatically create another with said pods]

==============================================================================================

SERVICES

- create a [.yml] file
	\_
		apiVersion: v1
		kind: Service
		metadata:
		    name: lb-service
		    labels:
		        app: lb-service
		spec:
		    type: LoadBalancer
		    ports:
		    -   port: 80
		    selector:
		        app: frontend
		---
		apiVersion: apps/v1
		kind: Deployment
		metadata:
		    name: frontend-deployment
		spec:
		    replicas: 2
		    selector:
		        matchLabels:
		            app: frontend
		    minReadySeconds: 30
		    strategy:
		        type: RollingUpdate
		        rollingUpdate:
		            maxSurge: 1
		            maxUnavailable: 0
		    template:
		        metadata:
		            labels:
		                app: frontend
		        spec:
		            containers:
		            -   name: frontend-container
		                image: nginx

[save and exit]

- Go to CMD 

> kubectl apply -f frontend-nginx.yml
> kubectl get services		       
