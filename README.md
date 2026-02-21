🏥 Hospital Management System (SQL Engine)
Advanced Relational Database Design & Financial Business Intelligence

<div align="center">

</div>

🎯 Project Vision
This system is engineered to transform raw medical transactions into strategic financial insights. It manages the delicate balance between Healthcare Operations (Doctors & Services) and Financial Integrity (Revenue Tracking & Payroll).

🚀 Technical Highlights
Relational Schema: Multi-table architecture with enforced referential integrity.

Transactional Power: Efficiently handles bulk data seeding and real-time auditing.

Analytical Views: Custom-built views for automated doctor performance and revenue reports.

Advanced Querying: Mastering CTEs, Subqueries, and Complex Aggregations.

🛠️ Tech Stack & Skills
Database: Microsoft SQL Server (T-SQL).

Logic: Joins, Views, Aggregations, CTEs, Data Normalization.

Management: SQL Server Management Studio (SSMS).

📖 Step-by-Step Implementation Guide
## Database Initialization:-
In this step, the core database newfinance is created. This screen demonstrates the initial setup and ensures the environment is ready for table creation and data seeding.
<img width="1916" height="629" alt="image" src="https://github.com/user-attachments/assets/4caa799c-4f55-489b-87c2-4398405e2b87" />
## Context Selection & Schema Building:-
In this phase, I switch the execution context to the newly created newfinance database. This ensures that all subsequent operations, such as creating the Employees table with its primary key and identity constraints, are performed within the correct database scope.
<img width="1920" height="719" alt="image" src="https://github.com/user-attachments/assets/5e560a89-137e-4a1e-b5a8-ab28bbca926a" />
## Data Modeling & Population:-
In this crucial step, I architect the Employees table structure, implementing specific data types to ensure financial accuracy (using DECIMAL for salaries) and multilingual support (using NVARCHAR for Arabic names). Following the schema definition, I perform the initial Data Seeding, populating the system with a diverse set of medical staff records, ranging from General Practitioners to Surgeons.
<img width="1920" height="874" alt="image" src="https://github.com/user-attachments/assets/93e1a205-0297-4ac5-9a19-6a1cc22ac862" />
## Execution & Data Verification:-
This screenshot captures the successful execution of the INSERT statements. The "Messages" panel confirms that 11 employee records were successfully committed to the database. This step is vital as it demonstrates the transition from a structural schema to a functional, data-populated system, ready for complex financial querying and analysis.
<img width="1919" height="1000" alt="image" src="https://github.com/user-attachments/assets/15bf89f6-914e-4681-811b-c8837c825004" />
## Data Integrity & Final Output Verification:-
To conclude the initial setup, I perform a comprehensive data retrieval using the SELECT statement. This confirms that all records—including Employee Names, Job Titles, and precisely formatted Salaries—have been correctly committed with their respective auto-generated IDs. This view serves as the baseline for all subsequent financial analytics and complex reporting within the system
<img width="1918" height="997" alt="image" src="https://github.com/user-attachments/assets/674fa98b-4579-4fe4-b8de-f511820c35b7" />
## Service Catalog & Pricing Strategy:-
In this stage, I developed the Services table, which acts as the hospital's financial catalog. I implemented a categorized pricing model where each medical procedure—from routine checkups to specialized surgeries—is assigned a unique ID, price, and category. This structured approach allows for precise revenue tracking and service-level performance analysis.
<img width="1920" height="993" alt="image" src="https://github.com/user-attachments/assets/cc47fd1d-07cf-41c2-a759-4ce55b65393f" />
## Finalizing the Service Catalog:-
This view showcases the complete Services lookup table, which forms the basis for all hospital billing. By executing a full selection, we verify that each medical procedure is correctly indexed with its monetary value and category (e.g., Surgery, Radiology, Emergency). This robust cataloging ensures that future transaction logs can easily reference these services for automated financial reporting.
<img width="1917" height="1001" alt="image" src="https://github.com/user-attachments/assets/217cf679-4201-49e9-9a0a-cb43f6107a63" />
## Transactional Logging & Relational Integrity:-
This is the heart of the system—the DailyOperations table. It acts as a bridge (Junction Table) between staff and services, utilizing Foreign Keys to ensure that every transaction is linked to a valid doctor and a specific medical procedure. The successful bulk insertion of over 370 transaction records demonstrates the database's ability to handle high-volume data entries efficiently while maintaining referential integrity.
<img width="1920" height="988" alt="image" src="https://github.com/user-attachments/assets/244ca22a-f931-4fce-96ca-4e462f66332e" />
## Live Transactional Audit:-
The final verification of the DailyOperations table confirms the system's operational readiness. This view displays a comprehensive log of medical activities, capturing unique Order IDs, Employee references, and precise Transaction Timestamps generated via GETDATE(). With 373 active records, this table provides the rich dataset necessary for generating high-level financial reports, payroll audits, and department performance metrics.
<img width="1917" height="998" alt="image" src="https://github.com/user-attachments/assets/e57c62da-2184-4f0f-a24f-4ad0aca31d37" />
## Advanced Analytics & Business Intelligence:-
The pinnacle of this project is the implementation of specialized SQL Views and complex reporting queries.

* Doctor Revenue Report: I developed a View (Doctor_Revenue_Report) that performs multi-table joins to calculate the total revenue generated by each doctor. This involves aggregating transaction prices while grouping data by staff names for clear financial visibility.

* Service Popularity Analysis: Using COUNT and ORDER BY DESC, the system can instantly identify the most frequently requested medical services, aiding in hospital resource management.

* Automation: By encapsulation logic into a View, I ensured that management can access real-time financial summaries without writing complex code.
<img width="1920" height="992" alt="image" src="https://github.com/user-attachments/assets/5b81b361-d390-40eb-9d80-533389cc708b" />
## Business Insights & Final Reporting
The project culminates in generating actionable business insights. By querying the Doctor_Revenue_Report view, the system processes hundreds of transactions to provide a clear summary of financial performance per staff member. This demonstrates the ability to transform raw operational data into strategic financial reports, enabling hospital management to make data-driven decisions regarding staff performance and department profitability.
<img width="1919" height="994" alt="image" src="https://github.com/user-attachments/assets/aefd6852-f136-44e5-8f01-92d53049ebd3" />
## Service Demand & Resource Optimization:-
Beyond financial totals, the system provides deep insights into service utilization. By employing COUNT and GROUP BY functions combined with an ORDER BY DESC clause, I generated a "Service Popularity Report". This report identifies which medical procedures are most frequently requested—such as General Checkups and Emergency treatments—allowing hospital administrators to optimize staffing and medical supplies based on actual patient demand.
<img width="1920" height="996" alt="image" src="https://github.com/user-attachments/assets/66754122-459a-4b8b-839a-736b3035ef19" />
## Top Performance Analytics & Range Filtering:-
The final stage of the project focuses on identifying peak performance metrics and granular data filtering.

* The "Top Performer" Query: I authored an advanced analytical query using SELECT TOP 1 combined with aggregate functions to pinpoint the highest-grossing medical service. This provides immediate clarity on which hospital departments drive the most significant financial impact.

* Precision Filtering: Using the BETWEEN operator, the system allows for targeted price-range filtering (e.g., services priced between 150 and 400), enabling management to audit specific tiers of medical procedures.
<img width="1920" height="997" alt="image" src="https://github.com/user-attachments/assets/8fde89c5-a5d8-4dfa-95a6-55e046ebc3e1" />
## Advanced Data Manipulation & Pattern Auditing:-
This phase demonstrates the database's capability for granular data management and maintenance. I focused on three key areas to ensure the system remains dynamic and accurate:

* Financial Range Filtering: Using the BETWEEN operator to isolate medical services within specific price brackets (e.g., 150 to 400), which is essential for auditing mid-tier procedures.

* Dynamic Search Logic: Implementing the LIKE operator with wildcard patterns to retrieve employee records based on specific naming conventions, ensuring quick access to staff details.

* Record Maintenance: Executing targeted UPDATE statements to modify sensitive data, such as adjusting salary records for specific IDs, demonstrating the system's ability to handle real-time administrative changes.
<img width="1920" height="996" alt="image" src="https://github.com/user-attachments/assets/52ac0f6b-803f-42f2-bada-0fa228731b16" />
## Revenue Group Filtering & Salary Statistics
At this stage, I transitioned into advanced data analytics to provide specific financial insights for hospital management. This involves:

* Conditional Group Filtering: Implementing the HAVING clause to filter medical services whose total revenue falls within a specific range (e.g., between 500 and 2000). This allows management to focus on services with specific profit margins rather than viewing the entire catalog.

* Executive Salary Benchmarking: Utilizing aggregate functions MAX() and MIN() to instantly identify the highest and lowest salary tiers within the hospital staff. This provides an immediate overview of the payroll structure for HR auditing.
<img width="1920" height="998" alt="image" src="https://github.com/user-attachments/assets/1a2bc860-bd92-4b04-9b8a-b7fc292b3b7b" />
## Top Performer Identification using CTEs & Subqueries
* To conclude the analytical phase, I implemented a sophisticated approach to identify the hospital's top-performing staff member based on total revenue generation.

* CTE Implementation: I utilized a Common Table Expression (CTE) named EmployeeRevenue to temporarily store the calculated total income for every doctor, which streamlines the query logic and improves readability.

* Dynamic Max Value Retrieval: By nesting a Subquery within the WHERE clause, the system dynamically fetches the record that matches the maximum total income. This ensures that even as transaction data grows, the report always accurately pinpoints the current top earner (e.g., "رامي الجزار" with a total of 5020.00).
<img width="1919" height="997" alt="image" src="https://github.com/user-attachments/assets/6ef8c1de-645f-4449-91c5-2d2a4a2e9997" />
## Ultimate Revenue Benchmark (Scalar Aggregation)
* To wrap up the data analysis phase, I performed a high-level scalar aggregation to determine the absolute highest total revenue generated by any single staff member.

* Nested Aggregation: This query utilizes a derived table (aliased as TempTable) to first calculate the sum of service prices per employee.

* Global Maximum: The outer query then applies the MAX() function to these totals to extract the single highest financial contribution (5020.00) recorded in the system. This metric is vital for setting performance benchmarks and calculating executive-level bonuses.
<img width="1918" height="998" alt="image" src="https://github.com/user-attachments/assets/79b94dfe-8d67-4811-ac00-8a5348f6be6d" />

