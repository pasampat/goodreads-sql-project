-- Query 1: Top 10 authors by total ratings
SELECT 
  authors, 
  SUM(ratings_count) AS total_ratings
FROM 
  books
GROUP BY 
  authors
ORDER BY 
  total_ratings DESC
LIMIT 10;


-- Query 2: Top 10 highest-rated books with 1000+ ratings
SELECT 
  title, 
  authors, 
  average_rating, 
  ratings_count
FROM 
  books
WHERE 
  ratings_count > 1000
ORDER BY 
  average_rating DESC
LIMIT 10;


-- Query 3: Which authors have written the most number of books?
SELECT 
  authors, 
  COUNT(*) AS num_books
FROM 
  books
GROUP BY 
  authors
ORDER BY 
  num_books DESC
LIMIT 10;


-- Query 4: What is the average number of pages for books in the dataset?
SELECT 
  AVG(num_pages) AS average_page_count
FROM 
  books;
  
  
  -- Query 5: Which authors have published at least 5 books, and what is their average rating?
SELECT 
  authors, 
  COUNT(*) AS num_books,
  AVG(average_rating) AS avg_rating
FROM 
  books
GROUP BY 
  authors
HAVING 
  num_books >= 5
ORDER BY 
  avg_rating DESC
LIMIT 10;


-- Query 6: Find all books with "Harry Potter" in the title
SELECT 
  title, 
  authors, 
  average_rating, 
  ratings_count
FROM 
  books
WHERE 
  title LIKE '%Harry Potter%'
ORDER BY 
  average_rating DESC;
