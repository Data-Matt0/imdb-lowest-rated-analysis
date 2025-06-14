# Processed Data: Filtered & Merged IMDb Files

This folder contains cleaned and filtered datasets used for the core analysis in this project. These files were generated by filtering IMDb's original data and preparing it for analysis using SQLite and pandas.

## Files

### `filtered_ratings.csv`
- Contains only titles with **at least 1,000 user votes**
- Includes IMDb rating and vote count
- Filtered from the `title.ratings.tsv` dataset

### `merged_movies.csv`
- Merged dataset combining:
  - `title.basics` (basic movie info)
  - `title.ratings` (ratings)
- Filtered to include:
  - Only **movies**
  - Released **after 1950**
  - With **at least 1,000 votes**
- Final structure includes fields like:
  - `tconst` (title ID)
  - `primaryTitle`, `startYear`, `genres`
  - `averageRating`, `numVotes`

## Purpose

These datasets serve as the foundation for all SQLite-based analysis and visualizations throughout the project. They are pre-cleaned and ready to be loaded into a database or pandas DataFrame.
