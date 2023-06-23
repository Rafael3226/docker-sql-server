# Base image with SQL Server
FROM mcr.microsoft.com/mssql/server:2022-latest

# Set environment variables for the SQL Server instance
ENV ACCEPT_EULA=Y
ENV SA_PASSWORD=MyComplexPassword123!

# Create a working directory
WORKDIR /usr/src/app

# Copy the SQL scripts to the container
COPY ./scripts/* ./

# Run the SQL scripts to initialize the database
RUN /opt/mssql/bin/sqlservr & sleep 20 \
    && /opt/mssql-tools/bin/sqlcmd -S localhost -U SA -P MyComplexPassword123! -i setup.sql \
    && pkill sqlservr

# Expose the SQL Server port
EXPOSE 1433

# Start the SQL Server instance when the container starts
CMD ["/opt/mssql/bin/sqlservr"]