SELECT name, SUM(amount) AS balance FROM Users u
LEFT JOIN Transactions t USING (account)
GROUP BY u.account, name
HAVING SUM(amount) > 10000;