🎬 MovieLens Analytics DBT Project

![image](https://github.com/user-attachments/assets/4a53d1dd-7eec-45e2-ad05-d4d339aa8a93)

This dbt project performs data transformations and modeling on the Movie Lens dataset, preparing it for analytics and dashboard purposes. It includes raw data ingestion, dimensional modeling, fact table generation, tests, and quality checks.

📁 Project Structure

```
my_dbt_project/
├── models/
│   ├── staging/
│   │   ├── src_links.sql
│   │   ├── src_movies.sql
│   │   ├── src_tags.sql
│   │   ├── src_ratings.sql
│   │   ├── src_genome_tags.sql
│   │   └── src_genome_scores.sql
│   ├── marts/
│   │   ├── dim_movies.sql
│   │   ├── dim_users.sql
│   │   ├── fct_ratings.sql
│   │   ├── mart_most_relevant_tag_per_movie.sql
│   │   ├── dim_movies_with_tags.sql
│   │   ├── top_rated_movies.sql
│   │   ├── least_rated_movies.sql
│   │   ├── top_years_movies.sql
│   │   └── top_rated_by_genre.sql
│   └── snapshots/
│       └── snap_tags.sql
├── tests/
│   ├── test_check_null.sql
│   ├── test_check_rating.sql
│   └── schema.yml
├── macros/
│   ├── not_nulls_in_columns.sql
│   ├── log_null_counts.sql
│   └── fill_nulls.sql
├── dbt_project.yml
└── README.md
```

```
✅ Features
✅ Staging Layer to standardize and rename raw columns

✅ Dimensional Models (Movies, Users, Tags)

✅ Fact Models (Ratings, Most Relevant Tags)

✅ Data Marts: Top rated movies, least rated movies, rating analysis by genre and year

✅ Snapshots to track tag changes over time

✅ Custom Macros for:

1.Logging null counts

2.Filling nulls with default values

3.Checking data quality

✅ Tests:

1.Not null checks

2.Unique keys

3.Relationship integrity
```

```

📊 Data Flow (Lineage)

⚙️ How to Run
# Install dependencies
dbt deps

# Compile and run all models
dbt run

# Run all tests
dbt test

# View lineage in dbt docs
dbt docs generate
dbt docs serve
```

```

📌 Sample Analytics

🔍 Top Rated Movies by Genre

📆 Most Popular Movie Years

💔 Least Rated Movies

🏷️ Most Relevant Tag per Movie

🧠 Genre-based Movie Grouping

📉 Null Analysis on Critical Columns
```

```
📐 Design Choices

All raw models prefixed with src_

All marts materialized as tables or views

Tags and genre handled via exploded arrays

Snapshotting tags enables tracking tag updates over time

Modular macros to reuse logic for data QA
```

```

🚀 Future Enhancements

Add popularity trend by decade

Track user behavior over time

Integration with a BI tool (Power BI, Looker, etc.)

Expose cleaned models via APIs for recommendation engine
```

```
📚 Credits

MovieLens dataset by GroupLens Research

dbt (Data Build Tool) by dbt Labs
```
