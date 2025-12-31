# Healthcare Patient Satisfaction & Operational Performance Analysis (HCAHPS)

## 📌 Project Overview
This project analyzes U.S. healthcare patient satisfaction data using **HCAHPS (Hospital Consumer Assessment of Healthcare Providers and Systems)** survey results to identify key drivers of patient experience and operational performance at the state level.

By modeling **top-box satisfaction metrics** and constructing a composite **Executive Satisfaction Index**, the analysis highlights underperforming states, satisfaction trends over time, and the relative impact of communication quality versus operational responsiveness. The project is designed to support **executive decision-making**, not just reporting.

---

## 🎯 Business Problem
Healthcare organizations face increasing pressure to improve patient satisfaction while operating under staffing and operational constraints. Leadership teams need clear answers to questions such as:
- Where is patient satisfaction declining?
- Which factors most influence hospital recommendation?
- Which regions require targeted operational intervention?

This project addresses these questions using a structured analytics workflow.

---

## 📂 Dataset
**Source:** HCAHPS (CMS – publicly available survey data)

**Key Tables Used**
- `state_results` – State-level top-box satisfaction percentages  
- `questions` – Survey question definitions  
- `measures` – Measure categories and descriptions  
- `responses` – Survey participation counts and response rates  

**Granularity:**  
State × Release Period (Year)

**Key Metrics**
- Nurse communication  
- Doctor communication  
- Staff responsiveness  
- Hospital recommendation  
- Executive Satisfaction Index (custom KPI)

---

## 🛠 Tools & Technologies
- **Python** – Data cleaning, transformation, feature engineering, EDA  
- **SQL (MySQL)** – Analytical schema design and business-grade queries  
- **Power BI** – Executive dashboard and diagnostic analysis  
- **GitHub** – Version control and portfolio presentation  

---

## 🔎 Methodology

### 1. Data Preparation (Python)
- Cleaned and standardized survey response rates  
- Converted HCAHPS top-box percentages into satisfaction metrics  
- Joined survey questions and measures for business context  
- Reshaped data into a state-level analytical fact table  
- Engineered executive-level KPIs  

### 2. Analytical Modeling
- Built a composite **Executive Satisfaction Index** using:
  - Hospital recommendation
  - Communication quality
  - Staff responsiveness  
- Ensured correct chronological analysis using proper date sorting  

### 3. SQL Analysis
- Designed a state-level analytical table optimized for reporting  
- Queried:
  - Underperforming states
  - Satisfaction trends
  - Volatility and stability
  - Improvement vs decline over time  

### 4. Visualization (Power BI)
- Developed a **2-page executive dashboard**:
  - Executive Overview
  - Diagnostic Deep Dive

---

## 📊 Dashboard Overview

### Page 1 – Executive Overview
- Executive Satisfaction Index  
- Average Recommendation %, Communication Score, Experience Score  
- Satisfaction trend over time  
- Bottom-performing states  
- Communication vs Recommendation diagnostic scatter  

### Page 2 – Diagnostic Deep Dive
- Volatility detection by state  
- Improvement vs Decline analysis  
- Metric breakdown by state with conditional formatting  

---

## 📈 Key Insights
1. **Communication quality is the strongest driver of patient recommendation**, outweighing operational delays.  
2. **Staff responsiveness shows high volatility**, indicating inconsistent operational execution across states.  
3. **Several states exhibit declining satisfaction trends**, suggesting structural rather than temporary issues.  
4. **Balanced mediocrity is common**—states with average scores across all metrics still underperform overall.  
5. **Low survey response rates introduce potential bias**, reducing confidence in reported satisfaction levels.  

---

## 💡 Business Recommendations

| Insight | Recommendation |
|------|---------------|
| Communication drives satisfaction | Prioritize nurse and doctor communication training |
| Volatile staff responsiveness | Redesign staffing workflows during peak demand |
| Declining state performance | Conduct targeted operational audits |
| Balanced mediocrity | Track composite KPIs instead of isolated metrics |
| Survey bias risk | Enforce minimum response-rate thresholds |

---

## ✅ Conclusion
This project demonstrates how healthcare satisfaction data can be transformed into **executive-ready insights** through structured data modeling, composite KPIs, and diagnostic visualization. The analysis enables leadership teams to identify performance gaps, prioritize interventions, and monitor improvement over time.

---

## 📁 Repository Structure
├── data/ # Raw and cleaned datasets

├── notebooks/ # Python data cleaning & EDA

├── sql/ # SQL schema and business queries

├── dashboard/ # Power BI dashboard files

├── report/ # Project report / presentation

└── README.md

---

## 📬 Contact
**Harshit Verma**  
Aspiring Data Analyst  
- Email: Harsh692002@gmail.com
- LinkedIn: [Harshit Verma](https://www.linkedin.com/in/harshit-verma-468b94398)  
- GitHub:  https://github.com/Harshitverma816
