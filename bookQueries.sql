-- Query to identify top authors based on the number of books authored
SELECT a.FirstName, a.LastName, COUNT(ba.ISBN) AS TotalBooksAuthored
FROM author a
JOIN bookauthor ba ON a.authorID = ba.AuthorID
GROUP BY a.FirstName, a.LastName
ORDER BY TotalBooksAuthored DESC
LIMIT 10;

-- Query to analyze book categories and their distribution
SELECT c.CatDescription, COUNT(b.Category) AS TotalBooks
FROM category c
LEFT JOIN book b ON c.CatID = b.Category
GROUP BY c.CatDescription;

-- Query to calculate average rating per book
SELECT b.Title, AVG(br.Rating) AS AvgRating
FROM book b
LEFT JOIN bookreview br ON b.ISBN = br.ISBN
GROUP BY b.Title;

-- Query to analyze book conditions and their descriptions
SELECT bc.Description, COUNT(ob.ISBN) AS TotalBooks
FROM bookcondition bc
LEFT JOIN ownersbook ob ON bc.Ranks = ob.Ranks
GROUP BY bc.Description;

-- Query to identify top publishers based on the number of books published
SELECT p.Name, COUNT(b.PublisherID) AS TotalBooksPublished
FROM publisher p
JOIN book b ON p.PublisherID = b.PublisherID
GROUP BY p.Name
ORDER BY TotalBooksPublished DESC
LIMIT 10;

-- Query to analyze reviewer sentiments by calculating average rating per reviewer
SELECT r.Name, AVG(br.Rating) AS AvgRating
FROM reviewer r
LEFT JOIN bookreview br ON r.ReviewerID = br.ReviewerID
GROUP BY r.Name;
