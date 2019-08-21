Deploy Spring Boot Rest API to ECS -> EC2

1. You Can Download Simple Rest API

# springboot2-jpa-crud-rest
CRUD Rest APIs using Spring boot 2, JPA, Hibernate 2 and MySQL

http://www.javaguides.net/2018/09/spring-boot-2-hibernate-5-mysql-crud-rest-api-tutorial.html

2. create database mysql

in here. we can use EC2 instance in aws for database.

3. create container registry

for images container repository. we used elastic container repository

by default you can use this command :

# configure aws cli

$ aws configure

# Run the aws ecr get-login command. The example below is for the default registry associated with the account making the request. To access other account registries, use the --registry-ids aws_account_id option. For more information, see get-login in the AWS CLI Command Reference.

$ aws ecr get-login --region region --no-include-email

Copy and paste the docker login command into a terminal to authenticate your Docker CLI to the registry. This command provides an authorization token that is valid for the specified registry for 12 hours.

# Create a Repository

$ aws ecr create-repository --repository-name #namerepo

# Push an Image to Amazon ECR

we have prepared shellscript for automated build and push image in repository "build-container.sh"