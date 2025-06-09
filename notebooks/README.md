# Notebooks Overview

This folder contains all Jupyter notebooks used throughout the IMDb Lowest Rated Movies analysis project. The notebooks are organized to reflect a logical data science workflow — from data preparation to database setup, analysis, and visualization.

---

## 📂 Overview

### 1. `imdb_filter_logic_CSV_conversion.ipynb`
**Purpose:** Loads raw IMDb datasets, applies filters (e.g. movies only, ≥1000 votes, post-1950), and outputs cleaned CSVs (`merged_movies.csv`, `filtered_ratings.csv`) for analysis.

➡️ Forms the basis of the cleaned dataset used in all downstream steps.

---

### 2. `sqlite_setup.ipynb`
**Purpose:** Creates a local SQLite database from the processed CSV files. Verifies table structure and loads data for SQL-based exploration.

➡️ Enables flexible querying and joins across IMDb tables for deeper analysis.

---

## 📂 `top_culprits/`

### 3. `exploratory_SQL_analysis.ipynb`
**Purpose:** Performs exploratory SQL queries on the movie data to identify patterns in genres, ratings, and vote counts among the lowest-rated titles.

➡️ Provides contextual insights that inform later analysis.

---

### 4. `top_50_frequent_people.ipynb`
**Purpose:** Identifies the most frequently involved individuals (actors, directors, etc.) in the bottom 200 movies by appearance count.

➡️ Helps uncover patterns in creative personnel contributing to poor-quality films.

---

### 5. `top_culprits_weighted_lollipop.ipynb`
**Purpose:** Calculates a **weighted score** of responsibility based on both frequency and average rating. Visualizes the top "culprits" using a custom lollipop chart.

➡️ This notebook contains the core insight of the project and its most polished visual.

---

## 📂 `interactive/`

### 6. `top_culprits_interactive.ipynb`
**Purpose:** Offers an interactive feature where users can select a **Top Culprit** for further inspection. A drop-down feature provides more details onto what project most contributed to the Top Culprit's ranking. 

➡️ Adds an exploratory, user-driven element to the project — ideal for stakeholder demos or app integration.

---
