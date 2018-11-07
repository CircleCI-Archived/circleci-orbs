# AWS ECR Orb

An orb for working with Amazon Elastic Container Registry (ECR)

The executors within this Orb provide run-time environments that contain the
necessary dependencies for executing the jobs and commands in this orb,
except for the following required dependencies that must be configured in
CircleCI in order to use this orb - Docker, environment variables for AWS
login ($AWS_ACCESS_KEY_ID, $AWS_SECRET_ACCESS_KEY)