-- Cleaned HR-Employee-Attrition-Table --
SELECT
    [Age]
    ,CASE 
        WHEN [Age] < 25 THEN 'Under 25'
        WHEN Age BETWEEN 25 AND 34 THEN '25 - 34'
        WHEN Age BETWEEN 35 AND 44 THEN '35 - 44'
        WHEN Age BETWEEN 45 AND 54 THEN '45 - 54'
        WHEN Age >= 55 THEN 'Over 55'
    END AS age_grouping
    ,[Attrition]
    ,CASE 
        WHEN [Attrition] = 'Yes' THEN 1
        WHEN [Attrition] = 'NO' THEN 0
    END AS [Attrition_Count] -- Convert Attrition column into number 1 and 0 to improve visualization.
    ,[BusinessTravel]
    ,[DailyRate]
    ,REPLACE(Department, 'Research & Development', 'R&D') as Department -- Better name for filters and visualisations
    ,[DistanceFromHome]
    ,[Education]
    ,[EducationField]
    ,[EmployeeCount]
    ,[EmployeeNumber]
    ,[EnvironmentSatisfaction]
    ,[Gender]
    ,[HourlyRate]
    ,[JobInvolvement]
    ,[JobLevel]
    ,[JobRole]
    ,[JobSatisfaction]
    ,[MaritalStatus]
    ,[MonthlyIncome]
    ,[MonthlyRate]
    ,[NumCompaniesWorked]
    ,[Over18]
    ,[OverTime]
    ,[PercentSalaryHike]
    ,[PerformanceRating]
    ,[RelationshipSatisfaction]
    ,[StandardHours]
    ,[StockOptionLevel]
    ,[TotalWorkingYears]
    ,[TrainingTimesLastYear]
    ,[WorkLifeBalance]
    ,[YearsAtCompany]
    ,[YearsInCurrentRole]
    ,[YearsSinceLastPromotion]
    ,[YearsWithCurrManager]
FROM 
    [HR Analytic].[dbo].[HR-Employee-Attrition]