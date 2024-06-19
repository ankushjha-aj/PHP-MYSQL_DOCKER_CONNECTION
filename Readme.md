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
   git clone https://your-repository-url.git
   cd php-mysql-connection 
