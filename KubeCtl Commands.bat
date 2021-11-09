kubectl config current-context
kubectl config use-context <context-name>
kubectl config --kubeconfig=/root/my-kube-config use-context research

kubectl config set-context= mycontext --namespace=mynamespace
kubectl config view

kubectl version
kubectl api-versions
kubectl api-resources
kubectl cluster-info
kubectl get nodes 
kubectl get nodes nodename --show-label
Kubectl explain job jobname --recursive

kubectl get pods -o yaml > podfilename.yaml
kubectl run podname --image nginx --dry-run=client -o yaml > podfilename.yaml
kubectl run messaging --image=redis:alpine -l tier=msg
kubectl create -f podfilename.yaml
kubectl apply -f podfilename.yaml
kubectl describe pods podname | grep -i image
kubectl get pods podname -o yaml | grep apiVersion
kubectl describe pods podname | grep --context 10 annotations:
kubectl describe pods podname | grep --context 10 Events:

kubectl delete pods podname
kubectl edit pods podname
kubectl explain pods --recursive | grep envFrom

kuebctl get deploy
kubectl get rs
kubectl get ns
kubectl get jobs
kubectl get cronjobs
kubectl get configmap
kubectl get secret
kubectl get roles
kubectl get rolebindings
kubectl get netpol
kubectl get ingress
kubectl get svc
kubectl get pv
kubectl get pvc

kubectl create deploy deploy_name --replicas 3 --image nginx
kubectl scale deploy deploy_name --replicas 5
kubectl autoscale deployment.v1.apps/nginx-deployment --min=10 --max=15 --cpu-percent=80
kubectl roolout status deploy deploy_name 
kubectl rollout history deploydeploy_name
kubectl rollout history deploy deploy_name --revision=1
kubeclt rollout undo deploy deploy_name --to-revision=2
kuebctl set image deploy deploy_name nginx=nginx:1.12 --record=true
kuebbctl delete deploy deploy_name --cascade=false

kubectl replace -f replicas_filename.yaml

kubectl expose pod podname --port=89 --type=NodePort --name= servicename 
kubectl expose deployment redis --port=6379 --name messaging-service --namespace marketing
kubectl create service servicename nginx --tcp:80:80 --node-port=30000
kubectl create service nodeport servicename nginx --tcp:80:80 --node-port=30000

kubectl create service clusterip my-svc --clusterip="None" -o yaml --dry-run=client | kubectl set selector --local -f - 'environment=qa' -o yaml | kubectl create -f -

kubectl create secret generic secret_name --from-literal=key1=value1
kubectl create secret tls secret_name --cert /filename.crt --key /filename.crt

kubectl configmap configmapname --from-literal=key1=value1 --from-literal=key2=value2
kubectl configmap configmapname --from-file=appconfig.properties


kubectl taint nodes nodename key1=value1:NoSchedule|NoExecute|PreferNoSchedule
kuebectl tain nodes nodename key1 -

kubeclt label nodes nodename key1=value1

kubeclt logs podname -c cotnainername

minikube addons enable metrics-server
kuebctl top pod
kubectl top node


kubectl-convert -f ingress-old.yaml --output-version networking.k8s.io/v1
kubectl-convert -f ingress-old.yaml --output-version networking.k8s.io/v1 > ingress-new.yaml

kubectl run nginx --image=nginx (deployment)
kubectl run nginx --image=nginx --restart=Never (pod)
kubectl run nginx --image=nginx --restart=OnFailure (job)
kubectl run nginx --image=nginx --restart=OnFailure --schedule="* * * * *" (cron job)


kubectl run nginx --image=nginx --restart=Never --port=80 --namespace=mynamespace 
--command --serviceaccount=mysa1 --env=HostName=local --labels=bu-finance.env=dev
--requests='cpu=100m, memory=256Mi' --limits='cpu=200m, memory=512Mi' --dry-run= -o yaml

kubectl describe pod kube-apiserver-controlplane -n kube-system

ps -ef | grep kube-apiserver | grep admission-plugins


--- preffered version
root@controlplane:~# kubectl proxy 8001&
root@controlplane:~# curl localhost:8001/apis/authorization.k8s.io

//Enable version
--runtime-config=rbac.authorization.k8s.io/v1alpha1
