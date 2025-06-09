## 📈 Notebook: Top Culprits - Basic Analysis of Worst-Rated IMDB Films

This notebook performs exploratory data analysis (EDA) to identify people who are most frequently associated with IMDb’s 200 lowest-rated movies. It offers static, role-based aggregation that complements the more dynamic, interactive exploration in the `top_culprits_interactive` notebook.

### 🔍 Key Questions Explored:
- Who are the most frequently involved people in the worst-rated movies?
- How do different roles (e.g., actors vs. directors) show up across this list?
- Which individuals have the most appearances, and in what capacities?

### 🧮 Data Pipeline Summary:
- Pulls in pre-processed CSVs: `merged_movies.csv`, `principals_filtered.csv`, and `names_filtered.csv`.
- Filters to the 200 lowest-rated movies using average rating (with a vote count tie-breaker).
- Joins names with principals to match individuals to roles in each film.

### 📊 Core Outputs:
1. **Bar chart of most frequent contributors** across all roles (e.g., actors, producers, directors).
2. **Bar chart broken down by role**, showing which individuals appear most often as actors, writers, etc.
3. **Tabular summary** of individuals with their total appearances and associated roles.

### 🧩 How This Fits Into the Overall Project

This notebook establishes the **baseline frequency-based perspective** on the most common contributors to low-rated films. It:
- Provides a **non-interactive but visually clear snapshot** of recurring names and roles.
- Helps identify potential patterns (e.g., which roles tend to repeat most often).
- Acts as a precursor to the **interactive weighted analysis**, where role importance and vote volume are introduced to refine the insights.

📎 If you're looking for a quick, visual summary of "frequent flyers" in bad films—without needing widgets or dropdowns—this notebook is the place to start.
