# Visuals – Top Culprits Lollipop Chart

This folder contains visual outputs that support the core findings of the **IMDb Lowest Rated Analysis** project. The primary image, `top_culprits_lollipop_chart.png`, presents a concise visual summary of key contributors most frequently associated with IMDb’s lowest-rated films.

---

## 📊 Chart Overview: `top_culprits_lollipop_chart.png`

This **lollipop chart** highlights individuals who appear repeatedly in the **200 lowest-rated IMDb films**, ranked by a custom **weighted score**. Each horizontal line represents one contributor, ending in a red circular marker indicating their **overall weighted impact**.

The weighted score accounts for three key factors:
- 📌 **Role importance** (e.g., producers have more creative control than actors)
- 🔁 **Frequency of appearances** across the worst-rated titles
- 📣 **Audience exposure**, measured by number of user votes

These factors are combined into a single score using the following role weights:

| Role      | Weight |
|-----------|--------|
| Producer  | 4      |
| Director  | 3      |
| Writer    | 2      |
| Actor     | 1      |
| Actress   | 1      |

---

## 📁 Data Sources

The chart is generated from pre-processed datasets located in `data/filtered_data/`:

- `merged_movies.csv`: Ratings, titles, and metadata for IMDb's lowest-rated films  
- `principals_filtered.csv`: Cast and crew information per film  
- `names_filtered.csv`: Contributor name mappings

These files are loaded into an SQLite database to construct a temporary view of the **worst 200 films**, ordered by lowest average rating and highest number of votes. Contributor impact is then calculated based on their role and the visibility of the films they worked on.

---

## 🧠 Purpose & Significance

This visualization serves as an **introductory lens** into the dataset, helping to identify:
- Individuals who appear disproportionately often in poorly rated films
- Potential patterns of recurring low-quality contributions
- Roles that exert the greatest influence over film quality

While the chart focuses on high-frequency, high-impact individuals, a more nuanced view is provided in the **interactive dropdown notebook** (`notebooks/interactive/top_culprits_interactive.ipynb`). That notebook explores **contributors with high weighted impact who may not appear frequently**, allowing for deeper insight into the creative dynamics behind these films.

---

## 📌 Context Within the Project

This visual complements the broader project goals by:
- Providing a **static, high-level summary** of frequent contributors
- Setting the stage for more advanced, interactive analyses
- Supporting the case for examining **role-based responsibility** in film outcomes

Together with the interactive exploration and cleaned datasets, this chart helps form a **data-driven narrative** about influence, accountability, and trends among IMDb's most poorly received titles.

---
