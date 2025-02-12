-- Observing the dataset-- 
select*
from oral_cancer_data;

-- How many patients are in the dataset?  --

select COUNT(*) as Total_Patients
from oral_cancer_data;

-- What is the age range of patients? --

select min(age) as Minimum_age, max(age) as Maximum_age
from oral_cancer_data;

-- What is the average survival rate? --

select avg(survival_Rate) as Average_Survival_Rate
from oral_cancer_data;

-- How many patients per gender? --

select Gender,count(*) as Patients_Per_Gender
from oral_cancer_data
group by Gender;


-- How many patients per country? (Top 10) --

select Country,count(*) as Top_10_Countries
from oral_cancer_data
group by Country
order by Top_10_Countries DESC limit 10;


-- Distribution of socioeconomic status? --

select Socioeconomic_Status, count(*) as Social_Economical_Condition
from oral_cancer_data
group by Socioeconomic_Status;

-- How many patients use tobacco and alcohol? --

select Tobacco_Use ,Alcohol_Use,count(*)
from oral_cancer_data
group by Tobacco_Use,Alcohol_Use;

-- Correlation between tobacco use and diagnosis stage --

select Tobacco_Use,Diagnosis_Stage,count(*)
from oral_cancer_data
group by Tobacco_Use,Diagnosis_Stage;

-- Which treatment type is most common? --

select Treatment_Type ,count(*) as Total_Patients
from oral_cancer_data
group by Treatment_Type
order by Total_Patients DESC;

-- Survival rate by treatment type --

select Treatment_Type,avg(Survival_Rate) as Survival_Rate
from oral_cancer_data
group by Treatment_Type
order by Survival_Rate desc;

-- Which country has the highest survival rate? --
select Country,avg(Survival_Rate) as Average_Survival_Rate
from oral_cancer_data
group by Country
order by Average_Survival_Rate DESC LIMIT 10;
 
 
 -- What is the average survival rate for tobacco users vs. non-users? --
select Tobacco_Use,avg(Survival_Rate) as Avg_Survival_Rate,count(*) as Total
from oral_cancer_data
group by Tobacco_Use;

