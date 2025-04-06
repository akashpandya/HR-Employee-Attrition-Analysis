# 📊 HR Employee Attrition & Retention Analysis (Google Data Analytics Capstone)

This project explores employee attrition data to identify key factors that impact retention within a company. The goal is to help HR professionals understand which departments are most affected, how salary and job satisfaction influence employee decisions, and where proactive strategies can reduce turnover.

---

## 🚀 Project Goal

Analyze employee behavior and trends to uncover insights that can help reduce attrition and boost employee satisfaction.

---

## 🔍 Key Questions Answered

- Which departments and roles have the highest attrition rates?
- Does higher salary reduce the likelihood of employees quitting?
- Are employees with low job satisfaction more likely to leave?

---

## 🛠 Tools & Skills Used

| Tool      | Purpose                                |
|-----------|-----------------------------------------|
| **SQL (BigQuery)** | Data cleaning and querying large datasets |
| **Excel**          | Preprocessing and quick analysis         |
| **Tableau**        | Visualization and interactive dashboards |

---

## 📂 Dataset Summary

- **File:** `hr_attrition_data.csv`
- **Rows:** 500 employee records
- **Columns include:**
  - `EmployeeID`: Unique identifier
  - `Department`: Employee department
  - `JobRole`: Employee job title
  - `MonthlyIncome`: Salary
  - `JobSatisfaction`: Rating (1–4)
  - `Attrition`: Whether the employee left the company ("Yes"/"No")
  - `YearsAtCompany`, `Age`, and other demographic data

---

## 🧮 SQL Scripts Included

- `data_cleaning.sql`: Formats data and handles missing values
- `attrition_analysis.sql`: Identifies high-attrition departments and roles
- `employee_retention.sql`: Analyzes impact of salary and job satisfaction

---

## 📊 Tableau Visualizations

### 📉 Attrition by Department
![Attrition by Department](HR-Employee-Attrition-Analysis/Attrition_By_Department.png)

### 💰 Salary vs Attrition
![Salary vs Attrition](HR-Employee-Attrition-Analysis/Salary_Attrition.png)

### 📊 Salary Distribution
![Salary Distribution](HR-Employee-Attrition-Analysis/Salary_Distribution.png)

### 😐 Job Satisfaction vs Attrition
![Job Satisfaction](HR-Employee-Attrition-Analysis/Job_Satisfaction_Attrition.png)

> *(Dashboard built in Tableau: `HR_Attrition_Dashboard.twbx`)*

---

## 📌 Key Insights

- **Sales and HR** departments show the highest attrition.
- Employees with **low job satisfaction (1 & 2)** are more likely to quit.
- **Salary helps reduce attrition**, but plateaus at higher income levels.

---

## 🧪 How to Recreate This Project

1. Clone/download this repo
2. Run the `.sql` scripts in BigQuery
3. Load the dataset into Tableau
4. Open the `.twbx` file to explore the interactive dashboard

---

## 🔮 Future Enhancements

- Add predictive modeling to estimate attrition risk per employee
- Expand dataset to include work-life balance, promotion history, and engagement scores

---

## 👤 Author

**Akash Pandya**  
Freelance Data Analyst | SQL, Tableau, Excel  
[Portfolio Website](https://aakashpandya.netlify.app/) • [GitHub](https://github.com/akashpandya) • [LinkedIn](https://www.linkedin.com/in/akash-pandya100/)

---
