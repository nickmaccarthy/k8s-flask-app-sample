# K8S Flask App Sample
The purpose of this repository is to demonstrate the building and deployment of a simple Flask based application to a Kubernetes cluster.  This is meant to emulate any microservice type code base, such as maybe something in NodeJS.

The `kubernetes` directory came from a git clone of [ansible-kubernetes-deployment-sample](https://github.com/nickmaccarthy/ansible-kubernetes-deployment-sample).  Check out that repo for more infomation on the nuts and bolts on how we are using Ansible to deploy this app to Kubernetes.

# Requirements
* Ansible 2.6+
* [Kube In A Box](https://github.com/nickmaccarthy/kube-in-a-box) - aka KIAB
* `kubectl` locall and a working `kubeconfig` locally (available via KIAB if you set that up initially)

# Building and Deployment
Assuming you have KIAB running run the following commands
* `make build-local` - this builds the docker container, and pushed the images to the Nexus registry running on KIAB
* `make deploy-local` - this deploys the container to the Kubernetes service running on KIAB

After deployment , you can access this application via [http://kiab.local:31111](http://kiab.local:31111)