use master;
go
drop database if exists ExpenseTrackerDB;
go
create database ExpenseTrackerDB;
go
use ExpenseTrackerDB;

CREATE TABLE "User" (

  user_id int not null primary key identity(1,1),
  name varchar(50) not null,
  password varchar(50) not  null,
  email varchar(50),
  created_at datetime

);

CREATE TABLE Category (

  category_id int not null primary key identity(1,1),
  name varchar(50) not null,
  description varchar(100)

);

CREATE TABLE Payment_method (

  payment_method_id int not null primary key identity(1,1),
  name varchar(50)

);

CREATE TABLE Budget (

  budget_id int not null primary key identity(1,1),
  user_id int not null,
  category_id int not null,
  amount float,
  start_date datetime,
  end_date datetime,

  FOREIGN KEY (user_id) REFERENCES "User"(user_id),
  FOREIGN KEY (category_id) REFERENCES Category(category_id)

);

CREATE TABLE Expense (

  expense_id int  not null primary key identity(1,1),
  user_id int,
  category_id int,
  payment_method_id int,
  amount float,
  date datetime,
  description varchar(255),

  FOREIGN KEY (user_id) REFERENCES "User"(user_id),
  FOREIGN KEY (category_id) REFERENCES Category(category_id),
  FOREIGN KEY (payment_method_id) REFERENCES Payment_method(payment_method_id)


);

