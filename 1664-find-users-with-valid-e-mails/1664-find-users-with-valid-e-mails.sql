# Write your MySQL query statement below
SELECT * FROM Users
WHERE REGEXP_LIKE(mail, '^[A-Z, a-z]+[A-Za-z0-9\_\.\-]*@leetcode\\.com$')