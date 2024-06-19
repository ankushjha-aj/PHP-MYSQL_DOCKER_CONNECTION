# PHP-MySQL Dockerized Application

This project provides a simple setup for running a PHP application with a MySQL database, all within Docker containers. This makes it easy to develop and deploy your application consistently across different environments.

## Features

* **Dockerized Environment:** PHP and MySQL run in separate containers for isolation and portability.
* **Easy Setup:** Use Docker Compose to manage both containers with a single command.
* **Data Persistence:** MySQL data is stored in a volume for persistence between container restarts.
* **Environment Variables:**  Securely manage sensitive information (database credentials) using environment variables.

## Prerequisites

* **Docker:** Make sure you have Docker installed on your system. You can download it from [https://www.docker.com/](https://www.docker.com/).
* **Docker Compose:** This tool is used to define and run multi-container Docker applications. It's usually included with Docker Desktop.

## Getting Started

1. **Clone the Repository:**
   ```bash
   git clone https://github.com/ankushjha-aj/PHP-MYSQL_DOCKER_CONNECTION.git (Public repo) 
   cd php-mysql-connection 

# Configuration (docker-compose.yml):

Open the docker-compose.yml file.
Update the following environment variables in both the db and web services:
MYSQL_ROOT_PASSWORD
MYSQL_DATABASE
MYSQL_USER
MYSQL_PASSWORD (Use strong and unique passwords for security.)

# Start the Containers:

--> docker-compose up -d 

# Note:
(If you are running this on local host for example, in your windows operating system with the help of vs code for any IDE Please try to run this command with Administrator privileges for example open a terminal of Powershell or cmd with administrator privileges Visit to the path of your project repository and then run the command I will recommend to use Windows Powershell the latest version because it includes commands like ls-la, etc )

# Verify the Setup:
Open a web browser and navigate to http://localhost:8080. You should see a PHP page
indicating that the connection to the MySQL database was successful.

# Project Structure:
docker-compose.yml: Defines the services (PHP and MySQL) and their configuration.
app/: (Create this directory) Contains your PHP application code (index.php in this example).

# Usage:
Once the containers are running, you can:
Access the PHP Application: Open your web browser and go to http://localhost.
Modify the PHP Code: Make changes in the app/index.php file. The changes will be reflected automatically.

# Stopping the Container:
docker-compose down

# Rebuilding the PHP Image:
docker-compose build


