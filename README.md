**"Anime Analytics with SQL"**

In this project, I leveraged SQL queries to analyze and extract valuable insights from an "anime" dataset. The dataset includes information such as titles, scores, episode counts, genres, and popularity rankings for various anime series and movies.

### Project Steps:

1. **Counting Null Values:**
   - Utilized the `ISNULL()` method to identify and count null values in the dataset.

2. **Handling Missing Data:**
   - Employed techniques such as forward-fill and mean imputation to fill null values in specific columns like "Genres," "Score," and "Release Date."

3. **Updating Rows:**
   - Used SQL `UPDATE` statements to handle missing values efficiently by applying techniques such as forward-fill for "Genres," mean imputation for "Score," and forward-fill for "Release Date."

4. **Top 10 Anime Titles:**
   - Employed SQL `SELECT` and `ORDER BY` clauses to retrieve and rank the top 10 anime titles based on their scores.

5. **Total Anime Titles:**
   - Utilized the SQL `COUNT` function to calculate and retrieve the total count of anime titles.

6. **Exporting to CSV:**
   - Employed the `to_csv` method to export the dataset to a CSV file, facilitating further analysis or sharing of the data.

7. **Top 10 Popular Anime:**
   - Leveraged SQL queries to retrieve the top 10 popular anime titles with non-zero scores.

8. **Anime with the Highest Score:**
   - Employed SQL queries to find and display the anime title with the highest score.

9. **Anime with the Lowest Non-Zero Score:**
   - Utilized SQL queries to find and display the anime title with the lowest non-zero score.

10. **Top Episode Counts with Most Anime Titles:**
    - Utilized SQL `GROUP BY` and aggregate functions to identify and rank the top 10 episode counts with the most associated anime titles.

### Findings:

- The dataset contains a variety of anime titles with diverse genres, scores, and popularity rankings.
- Forward-fill and mean imputation were effective techniques for handling missing data in columns like "Genres," "Score," and "Release Date."
- The distribution of episode counts for anime titles shows that certain episode counts are more prevalent, and these were identified through the analysis.
