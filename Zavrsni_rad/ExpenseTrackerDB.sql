use master;
go
drop database if exists ExpenseTrackerDB;
go
create database ExpenseTrackerDB;
go
use ExpenseTrackerDB;

DROP TABLE "Users";
DROP TABLE Categorys;
DROP TABLE Payment_methods;
DROP TABLE Budgets;
DROP TABLE Expenses;


CREATE TABLE "Users" (

  user_id int not null primary key identity(1,1),
  name varchar(50) not null,
  password varchar(50) not  null,
  email varchar(50),
  created_at datetime

);

CREATE TABLE Categorys (

  category_id int not null primary key identity(1,1),
  name varchar(50) not null,
  description varchar(100)

);

CREATE TABLE Payment_methods (

  payment_method_id int not null primary key identity(1,1),
  name varchar(50)

);

CREATE TABLE Budgets (

  budget_id int not null primary key identity(1,1),
  user_id int not null,
  category_id int not null,
  amount float,
  start_date datetime,
  end_date datetime,

  FOREIGN KEY (user_id) REFERENCES "Users"(user_id),
  FOREIGN KEY (category_id) REFERENCES Categorys(category_id)

);

CREATE TABLE Expenses (

  expense_id int  not null primary key identity(1,1),
  user_id int,
  category_id int,
  payment_method_id int,
  amount float,
  date datetime,
  description varchar(255),

  FOREIGN KEY (user_id) REFERENCES "Users"(user_id),
  FOREIGN KEY (category_id) REFERENCES Categorys(category_id),
  FOREIGN KEY (payment_method_id) REFERENCES Payment_methods(payment_method_id)

);


INSERT INTO Users(name,email,password,created_at) VALUES
('Jakov Šužberić', 'jakov.suzberic@gmail.com', 'sifrajedan', '2024-06-06 16:00');
('Lovro Šužberić', 'loky747@gmail.com', 'sifradva', '2024-06-06 16:10');

SELECT * FROM "Users";

