USE Master
Go

create database OuterJoinDB
GO

USE OuterJoinDB

CREATE TABLE Person (
ID int not null Primary Key,
FirstName varchar(20) not null,
CarID int,
SportID int)

CREATE TABLE Sport (
ID int not null Primary Key,
name varchar(20)
)

CREATE TABLE Car (
ID int not null Primary Key,
Name varchar(20)
)

INSERT INTO Sport VALUES (1, 'Hockey')
INSERT INTO Sport VALUES (2, 'Squash')
INSERT INTO Sport VALUES (3, 'Cycling')
INSERT INTO Sport VALUES (4, 'Cricket')

INSERT INTO Car VALUES (1, 'GM')
INSERT INTO Car VALUES (2, 'Pontiac')
INSERT INTO Car VALUES (3, 'Toyota')

INSERT INTO Person VALUES (1, 'Igor', 2, 1)
INSERT INTO Person VALUES (2, 'John', 1, 1)
INSERT INTO Person VALUES (3, 'Bhupinder', NULL, 4)
INSERT INTO Person VALUES (4, 'Mark', 3, 3)
INSERT INTO Person VALUES (5, 'Joseph', 1, 2)
INSERT INTO Person VALUES (6, 'Carl', 2, NULL)