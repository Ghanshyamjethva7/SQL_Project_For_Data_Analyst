
/*this query is find top demanded skills in 2023.*/



select skills, count(skills_job_dim.job_id) as demand_count from job_postings_fact
inner JOIN skills_job_dim ON job_postings_fact.job_id = skills_job_dim.job_id
inner join skills_dim on skills_job_dim.skill_id = skills_dim.skill_id
where job_title_short = 'Data Analyst' and job_work_from_home = 'true'
group by skills
order by demand_count desc
limit 10;





/*
thia is the output of this query 
[
  {
    "skills": "sql",
    "demand_count": "7291"
  },
  {
    "skills": "excel",
    "demand_count": "4611"
  },
  {
    "skills": "python",
    "demand_count": "4330"
  },
  {
    "skills": "tableau",
    "demand_count": "3745"
  },
  {
    "skills": "power bi",
    "demand_count": "2609"
  },
  {
    "skills": "r",
    "demand_count": "2142"
  },
  {
    "skills": "sas",
    "demand_count": "1866"
  },
  {
    "skills": "looker",
    "demand_count": "868"
  },
  {
    "skills": "azure",
    "demand_count": "821"
  },
  {
    "skills": "powerpoint",
    "demand_count": "819"
  }
]*/