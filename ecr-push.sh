# ecr-push.sh
#!/bin/bash

REPO_NAME="hello-world-repo"
AWS_REGION="us-east-1"

aws ecr get-login-password --region us-east-1 | docker login --username AWS --password-stdin 505472613365.dkr.ecr.us-east-1.amazonaws.com
docker build -t hello-world-repo .
docker tag hello-world-repo:latest 505472613365.dkr.ecr.us-east-1.amazonaws.com/hello-world-repo:latest
docker push 505472613365.dkr.ecr.us-east-1.amazonaws.com/hello-world-repo:latest
