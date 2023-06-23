-- Create the database
CREATE DATABASE RectangleSearch;
GO

-- Use rectangle search database
USE RectangleSearch;
GO

-- Create a new login
CREATE LOGIN RECTANGLE_SEARCH_API_LOGIN WITH PASSWORD = 'x4acx5=eS%!jHfjU';
GO

-- Create a new user and associate it with the login
CREATE USER RECTANGLE_SEARCH_API FOR LOGIN RECTANGLE_SEARCH_API_LOGIN;
GO

-- Grant db_owner role to a user
ALTER ROLE db_owner ADD MEMBER RECTANGLE_SEARCH_API;

-- Add other necessary privileges based on your requirements

