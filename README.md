
docker build -t swarm-dashboard .

docker run -d -p 5000:5000 -e DASHBOARD_USERNAME=admin -e DASHBOARD_PASSWORD=xxxx -v /var/run/docker.sock:/var/run/docker.sock --name swarm-dashboard swarm-dashboard
