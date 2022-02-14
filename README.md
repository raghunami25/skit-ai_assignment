# **1. Docker**
To build or run a dockerfile

You have a working [Docker environment](https://docs.docker.com/engine/).

### **To build Docker image**  

git clone raghunami/skit-ai_assignment
cd skit-ai_assignment
docker build -t repositoryname:tag (Ex-raghunami/go-test-docker:latest).

<br/>

### **To Run Docker image** 
docker run [docker_image]

<br/><br/>

# **2. Kubernetes**


## **To start develop/deploy kubernetes**

You should have kubernetes in your system. 
If not you can check the documentation here [kubernetes.io.](https://kubernetes.io/)

Also you need to enble kube in docker. To enable it in mac, click on the Docker icon, go to Preferences | Kubernetes, select the Enable Kubernetes checkbox and hit Apply.

In linux for testing single node cluster you can use minikube.

### **To deploy**
kubectl create -f deployment.yml 

You can check the deployment using command -

kubectl get deployments

<br/>

### **To create a service**
kubectl create -f service.yml 

You can check the services using command - 

kubectl get deployments

<br/>

### **To run the application**
curl IPAddress:port(In our case 31000)


