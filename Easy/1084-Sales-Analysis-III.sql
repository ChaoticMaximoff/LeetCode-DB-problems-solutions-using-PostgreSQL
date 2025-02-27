SELECT DISTINCT p.product_id, p.product_name FROM Product p
RIGHT JOIN Sales s USING (product_id)
WHERE
    sale_date BETWEEN '2019-01-01' AND '2019-03-31' AND
    p.product_id NOT IN (
        SELECT product_id FROM Sales
        WHERE sale_date NOT BETWEEN '2019-01-01' AND '2019-03-31'
    );