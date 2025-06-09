# Visuals – Top Culprits Lollipop Chart

This folder contains visual outputs that support the findings of the **IMDb Lowest Rated Analysis** project. The primary visual, `top_culprits_lollipop_chart.png`, presents a ranked view of contributors with a high presence in IMDb’s lowest-rated films, based on a custom scoring system.

---

## 📊 Chart Overview: `top_culprits_lollipop_chart.png`

This **lollipop chart** highlights contributors who appear frequently in the **200 lowest-rated IMDb movies**. Each red marker represents a contributor’s **weighted score**, calculated by combining:

- 🔁 **Frequency** of appearances across the lowest-rated films  
- 📌 **Role impact**, where certain roles carry more influence  
- 📣 **Audience exposure**, measured by the number of user votes

**Role weights** used in the calculation:

| Role      | Weight |
|-----------|--------|
| Producer  | 4      |
| Director  | 3      |
| Writer    | 2      |
| Actor     | 1      |
| Actress   | 1      |

Higher scores indicate greater overall impact on low-rated content, with producers and directors having a stronger influence than actors.

---

## 📁 Data Sources

The chart is built using filtered datasets originally sourced from IMDb and processed into the following CSVs:

- `merged_movies.csv`  
- `principals_filtered.csv`  
- `names_filtered.csv`

To meet GitHub file size limitations, **sample versions** of these datasets are stored in `data/filtered_data/` and `data/sample_datasets/` on this repo.

🔗 **For full datasets (recommended for replication or deeper analysis):**  
All filtered data files used in this chart are publicly available here:  
👉 [Google Drive – Full Filtered Data Folder](https://drive.google.com/drive/folders/1zedc4W0_0Jw1b3VrmJQb2jtTE7NSDKHP?usp=sharing)

---

## 🧠 Purpose & Significance

This chart helps identify:

- Contributors who consistently appear in low-rated content
- Patterns of recurring influence across poorly received titles
- Potential accountability tied to creative or production roles

It provides a **static overview** of prominent contributors, setting the stage for deeper exploration using interactive tools.

---

## 🔄 Related Analysis

This chart is closely related to the interactive notebook found in:

- `notebooks/interactive/top_culprits_interactive(1).ipynb`

That notebook goes beyond frequency and uncovers contributors with high **weighted impact**, even if they are not among the most frequent names.

Together, these analyses present a **multi-dimensional perspective** on influence and responsibility in low-rated film production.

---
