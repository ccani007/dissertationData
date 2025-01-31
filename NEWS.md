
# dissertationData 1.2.0

## Date 01/30/2025
- **A day to remember**
Today, the **CDC's official website** holding all the **YRBS datasets** was 
taken down.  

The scientific community is rapidly working to recover the data, and this
package serves as a **recovery repository**! However, I cannot do this alone,
so I have invited **Francisco Cardozo** as a coauthor of the package. 
Together, we will **maintain the package, update its functionalities, and continue advocating for public data access.**  


**Welcome, Francisco! 🎉**  


## Date 01/24/2025
- **Adding 2023 YRBS Data set**

The newest data release by the CDC was included in the package. 
Its yet not integrated with the previous years. 

# dissertationData 1.1.0

## Date 12/18/2023

- **Integration of Real Data for Dissertation Analysis**

The dissertation utilizes two distinct datasets. The first dataset includes a select group of predictors, specifically chosen for conducting a priori determined logistic regression. The second dataset is more comprehensive, encompassing all potential predictors from the YRBSS that are theoretically relevant for predicting adolescent suicide attempts, with a criterion of less than 80% missing data for inclusion.

Both datasets have been optimized by consolidating related variables into single composite variables. This approach not only minimizes missing data but also diminishes redundancy, enhancing the overall analytical efficacy.

- **New Function for Creating Composite Variables**

A new function has been introduced to facilitate researchers in generating their own composite variables. This tool is designed to streamline the process of combining multiple related variables into a single, more effective predictor, allowing for more tailored and precise data analysis.

- **New Function for Recoding Binary Variables**

A new function has been added to facilitate the recoding of binary variables. This function, designed to convert values from 0-1 to a more interpretable format of 'No'-'Yes', enhances data clarity and eases subsequent analysis.

- **New Function to Easily Plot Risk Factors Relative to Outcomes of Interest**

Another recent addition is a function specifically developed to plot risk factors in relation to a chosen outcome of interest. This tool streamlines the visualization process, allowing for a clear and concise representation of how various risk factors correlate with outcomes such as suicide attempts.

# dissertationData 1.0.0

## Date 10/04/2023

- **YRBS 2017 Data Cleaning Finished:**
The cleaning process for the YRBS 2017 data has been completed.

- **Combined Dataset Created (2017, 2019, and 2021):**
I have successfully merged three datasets—2017, 2019, and 2021. To ensure consistency, I have retained only the variables that are common across all three datasets. As a result, I have created four different datasets: one comprehensive dataset for each year and a combined dataset containing only the variables present in all three years.

- **Documentation Completed:**
The documentation for all four datasets has been finalized.



## Date: 07/28/2023

- **README File Creation and Documentation:**
The README file for the repository was created on this date. 
The README serves as a comprehensive guide to the project, providing an overview of the repository's purpose, objectives, and dataset descriptions. It also includes essential information on how to use the package, dependencies, installation instructions, and data sources.

- **License Addition:**
To ensure proper licensing and usage guidelines, the appropriate license was added to the package on this date. This ensures clarity on how the data and code can be used, shared, and modified by others.

- **Completed Cleaning YRBS 2019 Data **
I did remarkable advances in cleaning the YRBS 2019 data. The preprocessing and data wrangling processes are finished, ensuring that the data is in optimal shape for analysis.


## Date: 07/27/2023

- **Data Download from CDC Website:**
On this date, both the YRBS datasets for the years 2019 and 2021 were downloaded from the official Centers for Disease Control and Prevention (CDC) website. The data was obtained using SPSS syntax to ensure accuracy and consistency. Following the download, the files were stored inside the "extData" directory of the repository.

- **Data Transformation to .rda Format:**
On the same date, the SPSS files containing the YRBS data were transformed into a more convenient and efficient format for inclusion in the package. The datasets were converted to .rda files, making them compatible with R and facilitating their seamless integration into the repository.

