CREATE TABLE tblURL
(
	URL VARCHAR(100)
)

INSERT INTO tblURL
VALUES
('www.amazon.com')
,('www.amazon.ca')
,('www.amazon.uk')
,('www.amazon.in')
,('.uk','United Kingdom')
,('.in','India')
,('.ca','Canada')

--Solution
SELECT A.URL, B.Country
FROM tblURL A
JOIN tblCountry B
ON PARSENAME(A.URL,1) = REPLACE(B.Suffix,'.','')

SELECT A.URL, B.Country
FROM tblURL A
JOIN tblCountry B
ON SUBSTRING(A.URL,CHARINDEX('.',A.URL,5),LEN(A.URL)) = B.Suffix



