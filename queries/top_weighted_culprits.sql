-- top_culprits_weighted.sql
-- 
-- Calculate weighted “blame” scores for individuals involved in the worst 200 IMDb movies.
-- Roles are weighted by impact: producers (4), directors (3), writers (2), actors/actresses (1).
-- The score combines number of appearances, votes per movie, and role weight.

WITH role_weights AS (
  SELECT 'producer' AS role, 4 AS weight UNION ALL
  SELECT 'director', 3 UNION ALL
  SELECT 'writer', 2 UNION ALL
  SELECT 'actor', 1 UNION ALL
  SELECT 'actress', 1
),
merged AS (
  SELECT 
    n.primaryName,
    LOWER(p.category) AS role,
    w.numVotes,
    COUNT(*) AS appearances,
    rw.weight
  FROM worst_200_movies w
  JOIN filtered_principals p ON w.tconst = p.tconst
  JOIN filtered_names n ON p.nconst = n.nconst
  JOIN role_weights rw ON LOWER(p.category) = rw.role
  GROUP BY n.primaryName, p.category
),
scored AS (
  SELECT 
    primaryName,
    role,
    SUM(appearances * weight * numVotes) AS final_score
  FROM merged
  GROUP BY primaryName, role
)
SELECT 
  primaryName,
  role,
  final_score
FROM scored
ORDER BY final_score DESC
LIMIT 20;
