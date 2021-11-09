ls -a
cat filename | base64
vi filename.yaml
echo --n "data" |base64
echo --n "data" |base64  -decode


--Enable Monitoring
--minikube
Minikube addons enable metrics-server

--other environment
Git clone https://github.com/kubernetes-incubator/metrics-server.git
Kubectl create –f deploy/1.8+/

Git clone https://github.com/kodekloudhub/kubernetes-metrics-server.git/
Kuebctl create –f .



args: ["-c", "while true; dp data >> /var/log/app.txt; sleep 5; done"]
args: [/bin/sh , -c, 'i=0; while true; do echo "$i: $(date); i=$((i+1)); sleep 1; done"']
args: ["-c", "mkdir -p collect; while true; do cat /var/data/* > /collect/data.txt; sleep 10; done"]

a=10;b=5; if [$a -le $b]; then echo "a is small"; else echo "b is small"; fi
x=1; while [$x -le 10]; do echo "welcome $x"; x=$((x+1)); done



sudo -i