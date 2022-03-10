# Project_Week_3_Data_Cleaning

Step by step:
- Open the data file in excel, highlight observed issues
- Load the data file to pandas dataframe, use various methods to note potential mistakes, obvious outliers, dupilcates and NaN etc
- With the spotted issues of the data, draft action plans tackling each data cleaning step
- Execute the codes with Python
- Export the codes to CSV
- Import the data to SQL for building tables
- Conclude our analysis from the SQL tables
- Prepare presentation slides 

Main data issues and cleaning solutions:
- Abnormal ID format >> tackled by using set_option()
- Mojibake within "Text" column >> fixed with ftfy.fix_text() method
- Redundant columns found >> drop these columns
- NaN values >> 
- Duplicated values >>
- Outliers >>

Obstacles encountered:
- Not easy to remove mojibake
- Quite obscure to define outliers and which data to drop or replaced
- Difficult to build conclusions from manipulated data 

Results:
- XX is related to YY (correlation if any)
