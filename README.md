<h1 align="center" id="title">Deploying a Spring Boot Application to AWS EKS using Terraform Amazon ECR and GitHub Actions CI/CD</h1>

<p id="description">This repository demonstrates how to deploy a Spring Boot application to Amazon EKS (Elastic Kubernetes Service) using Terraform for infrastructure management Amazon ECR (Elastic Container Registry) for container image storage and GitHub Actions for CI/CD (Continuous Integration/Continuous Deployment) automation.</p>


# <a name="_toc172059415"></a>Infrastructure Deployment

# <a name="_toc172059414"></a>Prerequisite

- GithubAccount
- AWS subscription account 
- IAM permissions
# <a name="_toc172059415"></a>Infrastructure Deployment
- Terraform is being used to provision Aws Resources, all code is placed in branch named infrastructure of github Repo.
- Infrastructure branch is used to deploy the infrastructure and has following structure:
  - ` `**Modules folder**: Contains Terraform modules of azure resources for infrastructure provisioning.
  - **eks.tf:** Contain the main set of eks configurations.
  - **ecr.tf:** Contain the main set of ecr configurations.
  - **vpc.tf:** Contain the main set of vpc configurations.
  - **eip.tf:** Contain the main set of eip and security group configurations.

  - **Variables.tf**: Contains the variable definition for modules.
  - **Locals.tf:** consist of all local values and uses expressions to configure names of resources according to environment.
#### *terraform workflow*
- **Terraform Scan:** Run terraform scan to validate terraform scripts. The Terraform scan stage is powered by a tool known as tfsec, which serves as a static analysis security scanner specifically for Terraform code.
- **Terraform Validate:** Utilizes the terraform validate command to ensure the correctness of Terraform configurations.
- **Terraform Plan:** Executes terraform init and terraform plan to initialize the environment and generate an execution plan for infrastructure changes.
- **Terraform Apply:** (Approval check is in place to give a go head for deployment): Consist of terraform init and terraform apply commands, with an approval check in place to authorize the deployment of infrastructure changes.


<h2>Repository Structure:</h2>
<ul>
  <li><code>src/</code>: Spring Boot application source code</li>
  <li><code>Dockerfile</code>: Docker configuration file for building the container image</li>
  <li><code>main.tf</code>: Terraform configuration file for provisioning AWS resources</li>
  <li><code>.github/workflows/ci-cd.yml</code>: GitHub Actions workflow configuration for CI/CD</li>
</ul>
