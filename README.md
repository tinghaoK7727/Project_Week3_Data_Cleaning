# Project_Week_3_Data_Cleaning

Step by step:
- Open the data file in excel, highlight issues that could be easily recognized
- Load the data file to pandas dataframe, use various methods to note potential human errors, obvious outliers, dupilcates and NaN etc
- With the spotted issues of the data, draft action plans tackling each data cleaning step
- Execute the codes with Python
- Export the codes to CSV
- Import the data to SQL with SQL Alchemy for uploading the cleaned table
- Conclude our analysis by testing several SQL queries
- Prepare presentation slides 

Main data issues and cleaning solutions:
- Abnormal ID format >> tackled by using set_option()
- Mojibake within "Text" column >> fixed with ftfy.fix_text() method
- Redundant columns found >> drop the columns with overlapping information
- NaN values >> depending on the type and the number of the values, either replace NaN with the mean or 0
- Outliers >> remove obvious ones from the dataset

Obstacles encountered:
- Not easy to remove mojibake
- Quite obscure to define outliers and which data to drop or to replace
- Difficult to correctly show long number values on SQL
- Challenging to draw firm conclusions our SQL queries 

Main results:
- More than 60% of Cyberbullying cases are from accounts with less than 3 years of existance
- More than 70% of Cyberbullying cases are texts with less than 100 characters
- More than 76% of Cyberbullying cases have less than 3 punctuations in the texts
- Only 0.16% of Cyberbullying authors mentioned themselves in their tweets
