SELECT w1.id FROM Weather w1
INNER JOIN Weather w2 ON
    (w1.recordDate::date - w2.recordDate::date) = 1 AND 
    w1.temperature > w2.temperature;