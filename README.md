<!-- badges: start -->
[![R-CMD-check](https://github.com/ccani007/dissertationData/actions/workflows/R-CMD-check.yaml/badge.svg)](https://github.com/ccani007/dissertationData/actions/workflows/R-CMD-check.yaml)
<!-- badges: end -->

# dissertationData: A PUBLIC YRBS data repository 

> :warning: As public health data is increasingly restricted and erased from open access under current policies, this repository is dedicated to preserving the *Youth Risk Behavior Surveillance System (YRBS)* data from the *Centers for Disease Control and Prevention (CDC)*. The YRBS is a crucial national survey tracking adolescent health behaviors, including substance use, mental health, physical activity, and experiences of violence. I am working to compile as many years of YRBS data as possible and will be updating this repository daily. Ensuring continued access to this dataset is essential for research, policy-making, and advocacy efforts aimed at improving adolescent health and well-being, especially at a time when transparency and evidence-based decision-making are under threat. *Stay strong!*

I am actively working to collect as many years of YRBS data as possible and will be updating this repository daily with what I can retrieve. Ensuring continued access to this valuable dataset is essential for research, policy-making, and advocacy efforts aimed at improving adolescent health and well-being.

Stay strong!

## **Description**: 

Welcome to the `dissertationData` package!

This package contains cleaned datasets from the Youth Risk Behavior Surveillance System (YRBS) for the years 2017, 2019, 2021, 2023. The central aim of this project is to streamline research on adolescent suicide attempts, particularly for my dissertation. 

Additionally, it is designed to **provide an immense time-saving** advantage for future researchers. With just a straightforward `data()` function call, you can easily access the raw, cleaned, or combined versions of the dataset within your R environment.

**Notes**: The progress notes are here [NEWS.md](https://github.com/ccani007/dissertationData/blob/main/NEWS.md).

## Installing my Package
```r
library(devtools)
install_github("ccani007/dissertationData")
```

## Raw Data

*You can find all of this information on the following website. [website](https://www.cdc.gov/healthyyouth/data/yrbs/data.htm)*

YRBS is a biennial survey conducted by the Centers for Disease Control and Prevention (CDC) to monitor health-risk behaviors among youth in the United States. The dataset provides valuable information on various behaviors that contribute to the leading causes of death and disability among adolescents.

The YRBS 2017, 2019 and 2021 dataset includes a wide range of topics, such as:

-   Behavioral Risk Factors: Information related to health-risk behaviors, including but not limited to tobacco use, alcohol and drug use, sexual activity, unhealthy dietary habits, and lack of physical activity.

-   Mental Health and Suicide-Related Data: Data pertaining to mental health issues, depression, self-harm, suicide ideation, and suicide attempts among young individuals.

-   Demographic Information: Basic demographic details such as age, gender, race/ethnicity, and grade level.

-   School-Related Factors: Data related to school attendance, academic performance, and other school-related behaviors.

-   Violence and Safety: Information about experiences with violence, bullying, and safety concerns.

-   Protective Factors: Data on factors that promote positive youth development and well-being.


## License:

The project is currently under [CC0 license](https://choosealicense.com/licenses/cc0-1.0/). Please refer to the LICENSE file for more details.


## Ordered Analysis Pipeline/ Workflow to Reproduce my Work

Run these file in order from raw processing to publication.

1.inst/extData/2017XXH_SPSS.sps, 2019XXH-SPSS.sps, 2021XXH-SPSS.sps

2.inst/extData/creatingRDA_data.R

3.inst/extData/creatingCleanYRBS2019.R, creatingCleanYRBS2019.R, creating CleanYRBS2021.R, and creatingCombinedYRBS.R
