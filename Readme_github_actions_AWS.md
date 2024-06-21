# Spin Up EC2 With Terraform Script (For Ease) 
Follow this Repo :
https://github.com/ankushjha-aj/Terraform-with-aws.git 

# Docker Compose Deployment with GitHub Actions

This repository streamlines the deployment of your Docker Compose project onto an AWS EC2 instance using GitHub Actions. It automates the entire process, including copying files, starting containers, and (optionally) importing your SQL database.

## Features

* **Automated Deployment:**  GitHub Actions workflow seamlessly deploys your project to AWS on every push to the `main` branch.
* **Database Integration:** Automatically imports your SQL database schema into the MySQL container (if enabled).
* **Simplified Management:**  No manual file transfers or database imports.
* **Docker Cleanup:** Ensures a clean deployment by stopping and removing old containers.

## Prerequisites

* **AWS EC2 Instance:** A running EC2 instance with Docker and Docker Compose installed.
* **GitHub Repository:**  Your Docker Compose project hosted on GitHub.
* **GitHub Secrets:** The following secrets are required:
    * `AWS_ACCESS_KEY_ID`
    * `AWS_SECRET_ACCESS_KEY`
    * `EC2_INSTANCE_PUBLIC_DNS` # e.g., ec2-xx-xxx-xx-xxx.compute-1.amazonaws.com
    * `EC2_USERNAME` (usually `ec2-user` or `ubuntu`)
    * `EC2_SSH_PRIVATE_KEY` "Begin with ------" 
    * `MYSQL_ROOT_PASSWORD` (if using database import)
## 
## Setup

1. **Clone:** Clone this repository to your local machine.
2. **Secrets:**  Store your secrets in your GitHub repository's settings.
3. **Customize:** Adjust the workflow file (`.github/workflows/main.yml`) with your specific EC2 details, file paths, and container names.
4. **Push:** Push your changes to the `main` branch to trigger the deployment.

## Workflow

1. **Trigger:** The workflow runs automatically when you push to the `main` branch.
2. **File Transfer:** The repository is securely copied to your EC2 instance.
3. **Docker Compose:** Your project is started with `docker-compose up -d`.
4. **SQL Import (Optional):**  The database schema is imported into MySQL.
5. **Verification:** A final check ensures all containers are running.

## Security

* **Sensitive Information:** All sensitive information is stored in GitHub Secrets, never exposed in your code.
* **SSH Keys:** Ensure your EC2 instance has the correct public key associated with your private key stored in the secret.

## Contributing

Feel free to fork this repository, create issues, or submit pull requests to improve this workflow.

## License

This project is licensed under the [MIT License](LICENSE).
