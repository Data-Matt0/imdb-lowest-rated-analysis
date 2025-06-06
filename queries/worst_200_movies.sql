
SELECT primaryTitle, startYear, averageRating, numVotes, genres
FROM movies
WHERE startYear >= 1950 AND numVotes >= 100
ORDER BY averageRating ASC, numVotes DESC
LIMIT 200;
