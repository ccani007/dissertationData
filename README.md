<!-- badges: start -->
[![R-CMD-check](https://github.com/ccani007/dissertationData/actions/workflows/R-CMD-check.yaml/badge.svg)](https://github.com/ccani007/dissertationData/actions/workflows/R-CMD-check.yaml)
[![Codecov test coverage](https://codecov.io/gh/ccani007/dissertationData/graph/badge.svg)](https://app.codecov.io/gh/ccani007/dissertationData)
[![Contributor Covenant](https://img.shields.io/badge/Contributor%20Covenant-2.1-4baaaa.svg)](code_of_conduct.md)
<!-- badges: end -->


# **dissertationData: A PUBLIC YRBS Data Repository** 📊 

> [!WARNING]
> As public health data is increasingly restricted and erased from open access under current policies, this repository is dedicated to preserving the **Youth Risk Behavior Surveillance System (YRBS)** data from the **Centers for Disease Control and Prevention (CDC)**. The YRBS is a crucial national survey tracking adolescent health behaviors, including substance use, mental health, physical activity, and experiences of violence. I am working to compile as many years of YRBS data as possible and will be updating this repository daily. Ensuring continued access to this dataset is essential for research, policy-making, and advocacy efforts aimed at improving adolescent health and well-being, especially at a time when transparency and evidence-based decision-making are under threat. **Stay strong!** 💪


## **Description**: 📝 

Welcome to the `dissertationData` package! 🎉

This package contains cleaned datasets from the **Youth Risk Behavior Surveillance System (YRBS)** for the years **2015, 2017, 2019, 2021, and 2023**. The central goal of this project is to facilitate research on adolescent suicide attempts, initially for my dissertation, but now for anyone committed to **evidence-based decision-making**! 🎯

Additionally, it is designed to **provide an immense time-saving** advantage for future researchers. With just a straightforward `data()` function call, you can easily access the raw, cleaned, or combined versions of the dataset within your R environment. ⚡

**Notes**: The progress notes are here [NEWS.md](https://github.com/ccani007/dissertationData/blob/main/NEWS.md) 📰

**Data Manuals:** You can find the user guide manuals [here](https://github.com/ccani007/dissertationData/tree/main/inst/manuals) 📚

## Installing my Package 💻

First, if you haven't installed `devtools` yet, install it from CRAN:
```r
install.packages("devtools")
```

Then, install the package from GitHub:
```r
library(devtools)
install_github("ccani007/dissertationData")
```

## Raw Data 📊

> [!NOTE]
> *You can find all of this information on the following website: [CDC YRBS Data](https://www.cdc.gov/healthyyouth/data/yrbs/data.htm).*  
> *This is no longer true as of January 30, 2025.*


YRBS is a biennial survey conducted by the Centers for Disease Control and Prevention (CDC) to monitor health-risk behaviors among youth in the United States. The dataset provides valuable information on various behaviors that contribute to the leading causes of death and disability among adolescents.

The YRBS 2017, 2019 and 2021 dataset includes a wide range of topics, such as:

-   Behavioral Risk Factors: 🚬 Information related to health-risk behaviors, including but not limited to tobacco use, alcohol and drug use, sexual activity, unhealthy dietary habits, and lack of physical activity.

-   Mental Health and Suicide-Related Data: 🧠 Data pertaining to mental health issues, depression, self-harm, suicide ideation, and suicide attempts among young individuals.

-   Demographic Information: 👥 Basic demographic details such as age, gender, race/ethnicity, and grade level.

-   School-Related Factors: 🏫 Data related to school attendance, academic performance, and other school-related behaviors.

-   Violence and Safety: 🛡️ Information about experiences with violence, bullying, and safety concerns.

-   Protective Factors: 🛡️ Data on factors that promote positive youth development and well-being.


## License: ⚖️

The project is currently under [CC0 license](https://choosealicense.com/licenses/cc0-1.0/). Please refer to the LICENSE file for more details.


## Ordered Analysis Pipeline/ Workflow to Reproduce my Work 🔄

> [!IMPORTANT]
> **You could have reproduced my work before January 30, 2025.**

Run these file in order from raw processing to publication.

1.inst/extData/2017XXH_SPSS.sps, 2019XXH-SPSS.sps, 2021XXH-SPSS.sps

2.inst/extData/creatingRDA_data.R

3.inst/extData/creatingCleanYRBS2019.R, creatingCleanYRBS2019.R, creating CleanYRBS2021.R, and creatingCombinedYRBS.R
