### 🎛️ Interactive Notebook: Identifying the Top "Culprits" Behind the Worst Movies

[![Open In Colab](https://colab.research.google.com/assets/colab-badge.svg)](https://colab.research.google.com/github/Data-Matt0/imdb-lowest-rated-analysis/blob/main/notebooks/interactive/top_culprits_interactive(1).ipynb)

This interactive notebook provides a dynamic way to explore individuals frequently involved in IMDb's lowest-rated films. It combines two analytical strategies—**frequency** and **weighted role impact**—to spotlight key contributors to poor-performing projects.

#### 📊 Chart: Weighted Score vs. Appearance Frequency

- **Red markers and lines** represent the individual's **weighted contribution score**, which multiplies the number of movie appearances by their role's influence (e.g., producer = 4×, director = 3×, etc.) and the number of user votes.
- **Blue markers** indicate how often that individual appears across the worst 200 movies.
- The chart displays only those individuals who rank **high by weighted score but were not in the top 50 by appearance count**, helping highlight under-the-radar contributors whose roles may have had outsized negative impact.

#### 🔍 Dropdown Selector: Deep Dive into Individual Contributors

- Selecting a name from the dropdown displays their **top 5 worst-rated projects**, ranked by an "impact score" that considers:
  - Role weight (e.g., producers exert more creative control),
  - Number of votes (to emphasize higher-visibility failures),
  - and the film's poor rating.
- This allows for a nuanced view of whether an individual’s bad track record comes from repeated participation or high-stakes involvement.

---

💡 This tool is especially useful for uncovering patterns in creative responsibility across poorly rated films, blending statistical insight with industry role dynamics.
