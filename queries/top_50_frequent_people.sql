
WITH worst_200_movies AS (
    SELECT primaryTitle, tconst, startYear, averageRating, numVotes, genres
    FROM movies
    ORDER BY averageRating ASC, numVotes DESC
    LIMIT 200
)
SELECT 
    n.primaryName,
    p.category,
    COUNT(*) AS appearances
FROM worst_200_movies w
JOIN principals p ON w.tconst = p.tconst
JOIN names n ON p.nconst = n.nconst
GROUP BY n.primaryName, p.category
HAVING appearances >= 2
ORDER BY appearances DESC
LIMIT 50;
