#!/bin/sh

# D:\MyLearning-experiment\git-projects\mea-icp-demo

C:\Users\IBM_ADMIN\Desktop\WIP\Jenkins\demos

kubectl create namespace jenkins 
helm install --name jenkins -f values.yaml --namespace jenkins stable/jenkins

printf $(kubectl get secret --namespace jenkins jenkins -o jsonpath="{.data.jenkins-admin-password}" | base64 --decode);echo

jenkins
admin/7UDMrcvVVR

	  
	  