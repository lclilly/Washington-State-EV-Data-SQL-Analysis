# 🚗⚡ Washington State Electric Vehicle Population Analysis

## Project Overview

This project analyzes electric vehicle (EV) adoption patterns in Washington State using both Excel and SQL. The analysis explores geographic distribution, manufacturer trends, temporal adoption patterns, and infrastructure considerations to understand the EV landscape in Washington.

---

## 📊 Dataset

**Source:** Washington State Electric Vehicle Population Data  
**Records:** 16,664 vehicles  
**Geographic Scope:** Washington State only  
**Data Cleaning:** Duplicates removed; filtered to Washington State records only

### Key Attributes
- Vehicle identification (VIN, Make, Model, Model Year)
- Geographic data (County, City, Postal Code, Legislative District)
- Technical specifications (Electric Vehicle Type, Electric Range, CAFV Eligibility)
- Infrastructure (Electric Utility, Vehicle Location)

---

## 🛠️ Technical Skills Demonstrated

### Tools & Technologies
- **Microsoft Excel:** Data cleaning, pivot tables, visualizations
- **SQL:** Data querying, aggregation, filtering, ranking
- **GitHub:** Version control and project documentation

### Analysis Techniques
- Trend analysis and year-over-year growth calculations
- Geographic distribution analysis
- Market share analysis
- Infrastructure mapping

---

## 📈 Analysis Journey

### Phase 1: Excel Analysis (Week 1)

**Data Preparation:**
- Removed duplicate records
- Filtered dataset to Washington State only
- Created structured pivot tables for initial exploration

**Key Visualizations Created:**
1. **Top 10 Counties by EV Count** (Pivot Table)
2. **Top 10 EV Makes** (Pivot Table)
3. **EV Adoption Trends by Model Year** (Line Chart)
4. **Average Electric Range by Vehicle Type** (Bar Chart)

**Excel Findings:**
- King County leads with 10,743 electric vehicles
- Tesla dominates with 1,751 vehicles
- Volvo follows with 1,519 vehicles
- Battery Electric Vehicles (BEV): 37 miles average range
- Plug-in Hybrid Electric Vehicles (PHEV): 30 miles average range

---

### Phase 2: SQL Deep Dive (Week 2)

Building upon Excel insights, SQL analysis provided deeper, more granular insights into the data.

---

## 🔍 Key Findings

### 1. Geographic Analysis: City-Level EV Adoption in King County

**Findings:**
- **Seattle** leads King County with **34.4%** of all EVs
- **Bellevue** follows with **12.5%**
- **Kirkland** accounts for **10.1%**

**Insight:** EV adoption is heavily concentrated in major urban centers within King County, suggesting that charging infrastructure and environmental awareness are strongest in these cities.

---

### 2. Tesla Model Deep Dive

**Findings:**
- **Model X:** 566 vehicles (highest)
- **Model S:** 558 vehicles
- **Model 3:** 284 vehicles

**Notable Discovery:** Model X and Model S, now discontinued by Tesla, still dominate Washington's EV landscape. This suggests long vehicle ownership cycles and the lasting popularity of Tesla's earlier premium models.

---

### 3. CAFV Eligibility Analysis

```

**Findings:**
- **Eligibility unknown** (battery range not researched): **51%**
- **Clean Alternative Fuel Vehicle eligible:** **30%**
- **Not eligible** (low battery range): **18%**

**Policy Implication:** Over half of the vehicles have unknown eligibility status, highlighting a gap in data completeness that could impact incentive program planning and EV adoption forecasting.

---

### 4. Year-Over-Year Growth Rate

```

**Findings:**
- **2022** recorded the highest growth rate: **54.2%**
- **2021** followed closely with **48.8%** growth
- Growth rates show acceleration in EV adoption post-2020

**Insight:** The surge in 2021-2022 likely reflects the impact of federal EV incentives, increased model availability, and growing environmental consciousness during the post-pandemic recovery period.

---

### 5. Electric Range Evolution Over Time


```

**Findings:**
- **2020** recorded the highest average electric range
- **2022** recorded the lowest average electric range
- Range has fluctuated rather than showing consistent improvement

**Surprising Insight:** Contrary to the expectation that battery technology would steadily improve, average range has actually decreased in recent years. This suggests that the market is expanding beyond premium, long-range EVs to include more affordable, shorter-range models and PHEVs, making EVs accessible to a broader consumer base.

---

### 6. Electric Utility Distribution

**Findings:**
- **Puget Sound Energy Inc / City of Tacoma:** 6,674 EVs **(40%)**
- **City of Seattle:** 4,191 EVs **(25%)**

**Infrastructure Implication:** These utilities serve the majority of Washington's EV owners and must prioritize grid capacity upgrades, charging infrastructure expansion, and renewable energy integration to support future EV growth.

---

## 💡 Key Takeaways

1. **Urban Concentration:** EV adoption is heavily concentrated in King County's major cities (Seattle, Bellevue, Kirkland)

2. **Legacy Models Dominate:** Discontinued Tesla models (Model X, Model S) still lead, indicating long ownership cycles

3. **Data Gaps:** 51% of vehicles have unknown CAFV eligibility status, highlighting data quality challenges

4. **Explosive Growth:** 2021-2022 saw 48-54% year-over-year growth in EV adoption

5. **Market Democratization:** Decreasing average range suggests expansion into more affordable EV segments

6. **Infrastructure Pressure:** Two utilities (Puget Sound Energy and Seattle) serve 65% of EV owners, requiring targeted infrastructure investment

---

## 🎯 Business Recommendations

**For Policymakers:**
- Prioritize charging infrastructure in Seattle, Bellevue, and Kirkland
- Address data gaps in CAFV eligibility to optimize incentive programs
- Support utilities serving high EV concentrations with grid modernization funding

**For Utilities:**
- Puget Sound Energy and City of Seattle must accelerate grid capacity planning
- Invest in smart charging solutions to manage peak demand

**For EV Manufacturers:**
- Opportunity in the affordable, mid-range EV segment
- Washington market shows strong appetite for diverse EV options beyond premium models

---

## 📁 Repository Structure

```
washington-ev-analysis/
│
├── README.md                          # This file
├── data/
│   └── Electric_Vehicle_Population_Data.csv
│
├── sql_queries/
│   ├── 01_geographic_analysis.sql
│   ├── 02_tesla_model_deep_dive.sql
│   ├── 03_cafv_eligibility.sql
│   ├── 04_yoy_growth_rate.sql
│   ├── 05_range_evolution.sql
│   └── 06_utility_distribution.sql
│
└── visualizations/
    ├── top_10_counties.png
    ├── top_10_makes.png
    ├── ev_adoption_trend.png
    └── avg_range_by_type.png
```

---

## 🚀 Future Analysis

**Phase 3: Expert-Level Insights (Planned)**
- BEV vs PHEV market share by manufacturer
- Postal code clustering for charging infrastructure planning
- Legislative district EV adoption analysis
- Model diversity analysis by county

---

## 🙏 Acknowledgments
Special thanks to the Washington State Department of Licensing for making this dataset publicly available.

---

## 📫 Connect With Me

**LinkedIn:** [Lilian Cheuno]  
**GitHub:** [lclilly]  
**Email:** [lilian.c.chebet@gmail.com]

---

## 📝 License

This project is open source and available under the [MIT License](LICENSE).

---

**⭐ If you found this analysis interesting, please star this repository!**
