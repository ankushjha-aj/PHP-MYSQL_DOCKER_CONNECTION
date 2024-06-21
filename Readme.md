# PHP-MySQL Dockerized Application

This project provides a simple setup for running a PHP application with a MySQL database, all within Docker containers. This makes it easy to develop and deploy your application consistently across different environments.

# Features

* **Dockerized Environment:** PHP and MySQL run in separate containers for isolation and portability.
* **Easy Setup:** Use Docker Compose to manage both containers with a single command.
* **Data Persistence:** MySQL data is stored in a volume for persistence between container restarts.
* **Environment Variables:**  Securely manage sensitive information (database credentials) using environment variables.

# Prerequisites

* **Docker:** Make sure you have Docker installed on your system. You can download it from [https://www.docker.com/](https://www.docker.com/).
# FOR LINUX (AWS UBUNTU, GCP UBUNTU)
sudo apt-get update
sudo apt-get install -y apt-transport-https ca-certificates curl software-properties-common
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"
sudo apt-get update
sudo apt-get install -y docker-ce
sudo systemctl start docker
sudo systemctl enable docker
sudo docker --version

* **Docker Compose:** This tool is used to define and run multi-container Docker applications. It's usually included with Docker Desktop.
# FOR LINUX (AWS UBUNTU, GCP UBUNTU)
--> sudo curl -L "https://github.com/docker/compose/releases/download/$(curl -s https://api.github.com/repos/docker/compose/releases/latest | grep -Po '"tag_name": "\K.*?(?=")')docker-compose(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
--> sudo chmod +x /usr/local/bin/docker-compose
--> sudo docker-compose --version

# Getting Started
1. **Clone the Repository:**
   ```bash
   --> git clone https://github.com/ankushjha-aj/PHP-MYSQL_DOCKER_CONNECTION.git (Public repo) 
   --> open Project in VS Code if you want to run it on WINDOWS Machine with localhost and For Linux Redirect it to thr cloned Directory 

   --> Here inside the folder you can see that there is a sub folder named as init-db.d, You need to put your required database inside this folder so that it will automatically import    databases into your required database that you defined into docker-compose.yml file
   
   --> You will also see that there is a "Dockerfile" Inside the roote directory This is to build a docker image for the root folder And it is used to deploy the image into my Docker Hub account. So if you want to push the images into your docker hub account, you can also use this, otherwise there is no need for this "Dockerfile", If you remove this file, you also need to remove ".github/workflows/docker_push.yml" So that it will not triggered on Github actions

# Configuration (docker-compose.yml):

Open the docker-compose.yml file.
Update the following environment variables in both the db and web services:
MYSQL_ROOT_PASSWORD
MYSQL_DATABASE
MYSQL_USER
MYSQL_PASSWORD (Use strong and unique passwords for security.)

# Start the Containers:
# Note.1: FOR WINDOWS
(If you are running this on local host for example, in your windows operating system with the help of vs code for any IDE Please try to run this command with Administrator privileges for example open a terminal of Powershell or cmd with administrator privileges Visit to the path of your project repository and then run the command I will recommend to use Windows Powershell the latest version because it includes commands like ls-la, etc )
Run the following command in your terminal from the project directory:
"docker compose up -d"

# Note.2: FOR UBUNTU (AWS, GCP, UBUNTU OS)
Run the following command in your terminal from the project directory:
"sudo docker compose up -d" # RUN COMMAND WITH ROOT PRIVILEGES 
This command starts both containers in detached mode (-d flag).

# NOTE.3 : FOR CLOUD SERVICES
Make sure that you have added firewall rules inside your security group in your given environment for allowing SSH(22), HTTP(80), MYSQL(3306) 
to make a connection with your INSTANCE While working on workflows files
And even if you are not using workflows You need to allow HTTP(80), MYSQL(3306) for accessing application

# Accessing the Application:
Open a web browser and navigate to http://localhost:8080 or http://your-ec2-PublicIp
-public-ip:8080 (for AWS EC2 instance) or http://your-gcp-external
-ip:8080 (for GCP instance). You should see the PHP info page.

# Stopping the Containers:
Run the following command in your terminal from the project directory:
docker compose down

# Project Structure:
docker-compose.yml: Defines the services (PHP and MySQL) and their configuration.
app/: (Create this directory) Contains your PHP application code (index.php in this example).

# Usage:
Once the containers are running, you can:
Access the PHP Application: Open your web browser and go to http://localhost.
Modify the PHP Code: Make changes in the app/index.php file. The changes will be reflected automatically.

# NOTE.4:
--> If you had not assigned elastic ip to your instance, Every time you stop and start your AWS Instant, you need to update public dns inside Github repo secret named public dns, or whatever named you assigned to that.