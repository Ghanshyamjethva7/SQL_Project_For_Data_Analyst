
/*
this query is find most paid skills in 2023.*/



select skills, avg(salary_year_avg) as avg_salary from job_postings_fact
inner JOIN skills_job_dim ON job_postings_fact.job_id = skills_job_dim.job_id
inner join skills_dim on skills_job_dim.skill_id = skills_dim.skill_id
where job_title_short = 'Data Analyst' and salary_year_avg is not null
group by skills
order by avg_salary desc
limit 10;




/*
this is the output of this query 
[
  {
    "skills": "svn",
    "avg_salary": "400000.000000000000"
  },
  {
    "skills": "solidity",
    "avg_salary": "179000.000000000000"
  },
  {
    "skills": "couchbase",
    "avg_salary": "160515.000000000000"
  },
  {
    "skills": "datarobot",
    "avg_salary": "155485.500000000000"
  },
  {
    "skills": "golang",
    "avg_salary": "155000.000000000000"
  },
  {
    "skills": "mxnet",
    "avg_salary": "149000.000000000000"
  },
  {
    "skills": "dplyr",
    "avg_salary": "147633.333333333333"
  },
  {
    "skills": "vmware",
    "avg_salary": "147500.000000000000"
  },
  {
    "skills": "terraform",
    "avg_salary": "146733.833333333333"
  },
  {
    "skills": "twilio",
    "avg_salary": "138500.000000000000"
  }
*/