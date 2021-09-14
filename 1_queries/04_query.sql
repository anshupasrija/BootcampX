SELECT name,email,id
FROM students 
Where email  NOT LIKE '%gmail.com' AND phone IS NULL;