sudo su
yum install -y git docker
curl -L "https://github.com/docker/compose/releases/download/v2.23.3/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose && sudo chmod +x /usr/local/bin/docker-compose
systemctl start docker
systemctl enable docker
git clone https://github.com/liorfranko/ollama-docker.git
cd ollama-docker
docker-compose up -d
