# Pewlett-Hackard-Analysis
SQL and relational database support 

## **Overview**
The goal is to analyze employee data tables in order to reduce the labor-loss impact of the 'silver tsunami' (baby-boomers born 1952-1955 that are nearing retirement age) and examine who from the organization should participate in mentorship for knowledge and skill transfer.  
The tables under analysis consist of basic employee information ranging from demographics, past and current job titles, hiring and termination dates (if applicable). The question we need to solve is whether the candidates identified for mentorship are sufficient to 
offset those that may be retiring in the next few years?        

## **Results**

### **Silver Tsunami Impacts**: 

* **What is the Impact of the current employees ready to retire? (Birth years 1952-1955)?**
Within this company there are currently >90k employees close to retirement. These employees hold roles that are varied in nature and some are highly skilled. 
The mass exodus of baby boomer retirees is an opportunity for hiring new talent and/or investing in existing talent. See Exhibit 1 (Summary Section)
  

* **What Company Roles are Impacted?**
The list of skilled roles and respective count for employees close to retirement are enclosed. Some roles have a much larger impact than others. 
Exhibit A

![Exhibit A](https://github.com/ljlodl5/Pewlett-Hackard-Analysis/blob/main/Queries/Data/Total%20Retirement%20Ready%20by%20Job%20Title%20.png)


* **Who is eligible for mentorship to support those that may be leaving the company soon?**
The company is examining who is eligible for mentorship in order to mitigate the impact of the silver tsunami. Currently, the list requested (Exhibit B) includes a subset of the existing company workforce (birth year 1965).
The list requested consists of ~1500 individuals as mentorship eligible based on their birthdate. The company may want to consider expanding the mentorship program in order to reduce the burden of existing employees to cover the large amount of people leaving the workforce.

![Exhibit B](https://github.com/ljlodl5/Pewlett-Hackard-Analysis/blob/main/Queries/Data/Mentor%20Eligible%201965.png)


* **Are those identified for mentorship enough to mitigate the company risk?**
Perhaps it is not necessary to mentor an equivalent amount of people to match those that are leaving, however in expanding the query of existing employees to those with 1960-1965 birth years there are ~93k employees that can be considered for mentorship. 
Containing the pool of eligible resources to birth year 1965 appears to have risk towards retaining skillset of the existing workforce. With the balance of mentored =(1.5k) vs. 'retirement-ready' =(90k) the disparity in those eligible for mentorship may not suitably fill the specific roles of those leaving. 
Therefore, the gap may contribute to burnout of the existing labor force or require the company to invest additional capital in new talent. It may be prudent to consider a larger pool of individuals for mentorship eligibility to compensate for the impending labor loss. See query (Exhibit 2) below.   

 
## **Summary**

In conclusion, there are ~90k jobs from a variety of positions that potentially will become available soon via the silver tsunami. This is at great risk to company knowledge and skillset if mentorship is not attained.
There are more than enough qualified individuals that are retirement-ready to mentor those that may stay in the company. However, the amount of resources requested for mentorship (concentrated to birthyear 1965) may not be enough recipients of this knowledge to keep 
the business from losing valuable expertise. Two additional queries to show this are depicted below 

**Exhibits 1 and 2**


The first query displays the amount of mentorship eligible individuals are requested if the query is just confined to birth year 1965. 
#### ![Exhibit 1](https://github.com/ljlodl5/Pewlett-Hackard-Analysis/blob/main/Queries/Data/Total%20Mentorship%20Eligibilty%20(1965%20only)%20.png)


The second query displays a much larger pool of potential candidates (birth years 1960-1965). This number ~93k is more equivalent to the potential retirees leaving the company. 
While it may not be necessary to mentor 1-to-1, those that are staying vs. those that may be leaving, it may be beneficial to have some light training for a larger subset of employees given the current external environment.  
"The Great Resignation" -an additional work exodus resulting from the combined demands of the pandemic and corporate culture- is also putting a large strain on corporations that were relying on late baby boomers, Generations X and Y to remain. 
It may be wise to expand low-cost mentorship to ease the burden of remaining employees that are expected to drive the skills the company needs to succeed. 

#### ![Exhibit 2](https://github.com/ljlodl5/Pewlett-Hackard-Analysis/blob/main/Queries/Data/Total%20Mentorship%20Eligibilty%20Table%20with%20roles%20and%20names%20(1960-1965)%20.png)

Queries(re: Employee Database challenge.sql) and data (re: multiple csv's) used as support for above are located in the following GitHub link:

#### Pewlett-Hackard_Analysis Challenge located in GitHub
(https://github.com/ljlodl5/Pewlett-Hackard-Analysis)