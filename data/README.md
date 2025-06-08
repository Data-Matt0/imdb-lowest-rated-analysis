# IMDb Analysis Project: Data Overview

This `data/` directory contains all datasets used or referenced in this project, structured to support a clean, reproducible data pipeline.

---

## 🔹 Folder Structure

### `sample_datasets/`
Contains sample (1,000-row) versions of the original IMDb datasets, including:
- `title.basics.csv`
- `title.ratings.csv`
- `name.basics.csv`
- `title.principals.csv`
- `title.crew.csv`

These samples are useful for schema inspection and lightweight development. They are **not used** in the final analysis.

➡️ See [`sample_datasets/README.md`](./smple_datasets/README.md) for details.

---

### `filtered_data/`
Contains the cleaned and filtered datasets used directly in the project analysis:
- `filtered_ratings.csv`: Ratings data filtered to titles with 1,000+ votes
- `merged_movies.csv`: A join of `basics` and `ratings`, filtered to movies since 1950

These are the canonical inputs for the SQLite database and all subsequent analysis steps.

➡️ See [`filtered_data/README.md`](./filtered_data/README.md) for details.

---

## 🔄 Data Workflow Summary

