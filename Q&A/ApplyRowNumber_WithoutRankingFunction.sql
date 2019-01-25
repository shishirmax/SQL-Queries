CREATE TABLE #TEMP (NAME VARCHAR(100))

INSERT INTO #TEMP (NAME) VALUES ('A'),('A'),('A'),('B'),('C'),('C')

WITH CTE1 AS 
(
 SELECT *,1 AS A ,COUNT(1) AS C  FROM #TEMP  GROUP BY NAME
 UNION ALL 
SELECT NAME,A+1,C FROM CTE1 WHERE A<  C
)
SELECT name,a as RN FROM CTE1  ORDER BY NAME 

DROP TABLE #TEMP