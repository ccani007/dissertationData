<!-- badges: start -->
[![R-CMD-check](https://github.com/ccani007/dissertationData/actions/workflows/R-CMD-check.yaml/badge.svg)](https://github.com/ccani007/dissertationData/actions/workflows/R-CMD-check.yaml)
[![Codecov test coverage](https://codecov.io/gh/ccani007/dissertationData/graph/badge.svg)](https://app.codecov.io/gh/ccani007/dissertationData)
[![Contributor Covenant](https://img.shields.io/badge/Contributor%20Covenant-2.1-4baaaa.svg)](code_of_conduct.md)
<!-- badges: end -->


# **dissertationData:** 

# A **Public** Data Repository 📊 

<div class="alert alert-info">
  <strong>NOTE:</strong> As public health data is increasingly restricted and 
  erased from open access under current policies, this repository is dedicated
  to preserving the **Youth Risk Behavior Surveillance System (YRBS)**. 
  **Stay strong!** 💪
</div>

## **Description**: 

Welcome to the `dissertationData` package! 

This package contains cleaned datasets from the **Youth Risk Behavior 
Surveillance System (YRBS)** for the years **2015, 2017, 2019, 2021, and 2023**.
The central goal of this project is to facilitate research on adolescent suicide 
attempts, initially for my dissertation, but now for anyone committed to 
**evidence-based decision-making**! 

### **Why Use This Package? **  

<p>
  This package offers a <strong>significant time-saving advantage</strong> for researchers. 
  With a simple <code style="background-color: #f5f5f5; padding: 3px 6px; border-radius: 4px; font-weight: bold;">data()</code> 
  function call in R, you can instantly access the <strong>raw, cleaned, or combined datasets</strong>—
  eliminating tedious data wrangling and allowing you to focus on analysis. 
</p>
 



**Notes**: The progress notes are here [NEWS.md](https://github.com/ccani007/dissertationData/blob/main/NEWS.md) 

**Data Manuals:** You can find the user guide manuals originally published by the CDC [here](https://github.com/ccani007/dissertationData/tree/main/inst/manuals) 

## **Installing my Package** 💻

First, if you haven't installed `devtools` yet, install it from CRAN:
```r
install.packages("devtools")
```

Then, install the package from GitHub:
```r
library(devtools)
install_github("ccani007/dissertationData")
```

## **Raw Data** 

YRBS is a biennial survey conducted by the Centers for Disease Control and Prevention (CDC) to monitor health-risk behaviors among youth in the United States. The dataset provides valuable information on various behaviors that contribute to the leading causes of death and disability among adolescents.

The YRBS datasets includes a wide range of topics, such as:

-   Behavioral Risk Factors: Information related to health-risk behaviors, including but not limited to tobacco use, alcohol and drug use, sexual activity, unhealthy dietary habits, and lack of physical activity.

-   Mental Health and Suicide-Related Data: Data pertaining to mental health issues, depression, self-harm, suicide ideation, and suicide attempts among young individuals.

-   Demographic Information: Basic demographic details such as age, gender, race/ethnicity, and grade level.

-   School-Related Factors: Data related to school attendance, academic performance, and other school-related behaviors.

-   Violence and Safety: Information about experiences with violence, bullying, and safety concerns.

-   Protective Factors:  Data on factors that promote positive youth development and well-being.


## License: ⚖️

The project is currently under [CC0 license](https://choosealicense.com/licenses/cc0-1.0/). Please refer to the LICENSE file for more details.


