SELECT 
    
    job_title,
    companies.name AS company_name,
    job_schedule_type,
    salary_year_avg

FROM job_postings_fact AS jobs
LEFT JOIN company_dim AS companies
    ON jobs.company_id = companies.company_id
WHERE 
    job_location = 'Anywhere' AND
    job_title_short = 'Data Analyst' AND
    salary_year_avg IS NOT NULL
ORDER BY salary_year_avg DESC
LIMIT 10