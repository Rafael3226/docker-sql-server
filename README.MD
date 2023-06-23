# SQL Server Docker Container Configuration

This guide provides instructions on how to configure and run a SQL Server Docker container, as well as how to connect to the database using the provided configuration.

## Prerequisites

Before proceeding with the steps below, ensure that you have Docker installed on your machine. You can download Docker from the official Docker website: [https://www.docker.com](https://www.docker.com/)

## Build and Run the Container

To build and run the SQL Server Docker container, follow these steps:

1. Clone the repository or navigate to the directory containing the Docker configuration files.

2. Open a terminal or command prompt.
3. Build the Docker image by running the following command:

   sqlCopy code

   `docker build -t sql-server .`

   This command will build the Docker image using the provided configuration files.

4. Once the image is built, run the Docker container using the following command:

   arduinoCopy code

   `docker run -p 1433:1433 sql-server`

   This command maps the host port 1433 to the container's port 1433, allowing you to access the SQL Server instance from your local machine.

   The SQL Server container should now be up and running.

## Connect to the Database

To connect to the SQL Server database with the provided configuration, follow these steps:

1. Open your preferred SQL Server management tool, such as SQL Server Management Studio (SSMS) or Azure Data Studio.
2. In the connection settings, provide the following information:

   - Server: localhost
   - Port: 1433
   - Authentication: SQL Server Authentication
   - Username: RECTANGLE_SEARCH_API_LOGIN
   - Password: x4acx5=eS%!jHfjU

3. Click the "Connect" or "OK" button to establish a connection to the SQL Server database.

4. Your SQL Server database is now set up and ready to use with the provided configuration.

## Additional Notes

- Ensure that the Docker container is running whenever you want to connect to the SQL Server database.
- If you need to stop the container, use the appropriate Docker commands, such as `docker stop` or `docker-compose down`, depending on your setup.
- Remember to backup your database regularly to avoid any potential data loss.
- Feel free to customize the configuration, database name, login credentials, and privileges to suit your specific needs.

## Troubleshooting

- If you encounter any issues during the build or run process, make sure Docker is properly installed and configured on your machine. Check the Docker documentation for troubleshooting guides or seek help from the Docker community.
- If you are unable to connect to the SQL Server database, verify that the container is running and that you have entered the correct connection details, including the username and password.
- Check the SQL Server management tool documentation for any specific troubleshooting steps related to the tool you are using.

## Conclusion

Congratulations! You have successfully configured and set up a SQL Server Docker container
