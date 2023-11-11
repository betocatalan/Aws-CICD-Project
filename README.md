# Python Django Pipeline
> Django crud App Workflow using GitHub Actions and Terraform.

Build and push to Docker Repo and deploy on a EC2 (AWS) instance.

### Prerequisites

- terraform (version used v0.13.4)
- AWS account
- EC2 Instance running
- Docker Hub Repo

On `~/.aws/credentials`
```
[default]
aws_access_key_id=YOUR_ACCESS_KEY_ID
aws_secret_access_key=YOUR_SECRET_ACCESS_KEY
```


On `settings/secrets`
```
HOST = ssh host
USERNAME = ssh user name
KEY = content of ssh private key (cat ./tf/private/key_access.pem)
DOCKER_USERNAME
DOCKER_PASSWORD
```

On `.github/workflow/push.yml`
```
image: docker-user/docker-repo
```

## Deploy
```sh
./deploy.sh
```

### SSH 
```sh
ssh -i ./tf/private/key_access.pem -A ubuntu@[instance IP]
```

## Destroy 
```sh
./down.sh
```

## Deploy
On master branch
```sh
git push
```
Cataluniat
