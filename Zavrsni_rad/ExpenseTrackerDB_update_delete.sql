

UPDATE Budgets SET start_date = '2024-06-05 00:00' WHERE budget_id = 1;
UPDATE Users SET name = 'Mijo Mijić' WHERE user_id = 3;
UPDATE Users SET email = 'mijomijic@gmail.com' WHERE user_id = 3;

DELETE FROM Expenses WHERE expense_id = 3;
--DELETE FROM Payment_methods WHERE name = 'Cash';


--Pitati kako ovo zaobici?



INSERT INTO Expenses(amount, date, description,user_id,category_id,payment_method_id) VALUES
(59.99,'2024-06-08 23:00','Groceries',3,3,3);

SELECT * FROM Expenses;
SELECT * FROM Payment_methods;
