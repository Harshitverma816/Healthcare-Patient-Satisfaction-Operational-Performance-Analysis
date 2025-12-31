-- Q1 - Worst Performing states overall
-- business question: Which states consistently underperform in patient satisfaction?

select state,
		round(avg(executive_satisfaction_index), 2) as avg_exc_satisfaction
from hcahps_state_satisfaction
group by state
order by avg_exc_satisfaction asc
limit 10;

-- Q2 - Best-Performing States
select state,
		round(avg(executive_satisfaction_index), 2) as avg_exc_satisfaction
from hcahps_state_satisfaction
group by state
order by avg_exc_satisfaction desc
limit 10;

-- Q3 - Trend of Satisfaction Over Time
select release_period,
		round(avg(executive_satisfaction_index), 2) as national_avg_satisfaction 
from hcahps_state_satisfaction
group by release_period
order by release_period;

-- Q4 - Communication vs Recommendation
select 
		round(avg(communication_score), 2) as avg_communication,
        round(avg(recommend_hospital), 2) as avg_recommendation
from hcahps_state_satisfaction;

-- Q5 - States with Strong Communication but Weak Recommendation
select state,
		round(avg(communication_score), 2) as avg_communication,
        round(avg(recommend_hospital), 2) as avg_recommendation
from hcahps_state_satisfaction
group by state
having avg_communication >= 75
and avg_recommendation < 70
order by avg_recommendation;

-- Q6 - Volatility Detection
select state,
		round(stddev(executive_satisfaction_index), 2) as satisfaction_volatility
from hcahps_state_satisfaction
group by state
order by satisfaction_volatility desc;

-- Q7 - Year-over-Year Improvement
select state,
		min(executive_satisfaction_index) as min_score,
        max(executive_satisfaction_index) as max_score,
        round(max(executive_satisfaction_index) - min(executive_satisfaction_index), 2) as improvement 
from hcahps_state_satisfaction
group by state
order by improvement desc;

-- Q8 - Identify “Balanced Mediocrity”
select state,
		round(avg(nurse_communication), 2) as nurse_comm,
        round(avg(doctor_communication), 2) as doctor_comm,
        round(avg(staff_responsiveness), 2) as responsiveness,
        round(avg(recommend_hospital), 2) as recommendation
from hcahps_state_satisfaction
group by state
having nurse_comm between 68 and 72
	and doctor_comm between 68 and 72
    and responsiveness between 68 and 72
    and recommendation between 68 and 72;

/* I designed a state-level analytical fact table from HCAHPS top-box scores and used SQL to identify underperforming regions, satisfaction trends, 
volatility, and key drivers such as communication quality. The queries were designed to support executive decision-making rather than ad-hoc analysis. */
