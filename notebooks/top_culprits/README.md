# Top Culprits – Frequency & Impact

This folder contains two foundational analyses that support the broader investigation into contributors associated with IMDb’s lowest-rated films. These notebooks help surface patterns in **contributor frequency** and **impact**, setting the stage for deeper exploration in the interactive component of the project.

---

## 📓 Notebooks

### 1. `top_50_frequent_people.ipynb`

This notebook identifies the **50 most frequently occurring individuals** across the 200 worst-rated IMDb titles. These are people—regardless of role—who appear in the credits of multiple low-rated projects. At the end of the notebook, a **horizontal bar chart** visualizes the number of appearances for each of these contributors.

🔹 **Note:** This chart is embedded directly within the notebook and is not saved as a separate image file.

The frequency analysis is helpful for:
- Highlighting repeat contributors
- Spotting potential patterns of creative involvement in low-performing content
- Informing downstream analyses (e.g., which contributors to evaluate more deeply)

---

### 2. `top_culprits_weighted.ipynb`

This notebook introduces a **weighted scoring system** that accounts for:
- 📌 Role importance (e.g., producer > actor)
- 🔁 Frequency of appearances
- 📣 Audience exposure (number of IMDb votes)

The resulting **weighted score** reflects the estimated creative or reputational impact of each contributor on the project’s perceived quality.

This data feeds directly into two other project components:
- 📊 A static lollipop chart in `visuals/top_culprits_lollipop_chart.png`
- ⚙️ A dynamic exploration experience in `notebooks/interactive/top_culprits_interactive(1).ipynb`

---

## 🧠 Context Within the Project

These two notebooks together provide a **foundational understanding** of who the most consistently involved contributors are — by raw count and by influence. They serve as a bridge between the cleaned datasets and the more advanced visual and interactive analyses, allowing hiring managers and data professionals to understand the **logic behind the scoring system** and the insights that follow.

---
