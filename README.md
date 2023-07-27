# dissertationData

**Author**: Catalina Canizares.


**Description**: Welcome to the dissertationData repository! This private package contains cleaned datasets from the Youth Risk Behavior Surveillance System (YRBS) for the years 2019 and 2021. The main purpose of this project is to facilitate research related to suicide ideation and attempts among adolescents for the author's dissertation.

**Notes**: The progress notes are here [DATED_PROGRESS_NOTES.md](dated_progress_notes.md).

## Run Me First

``` r
install.packages("remotes")

remotes::install_cran(
  c("conflicted", "tidyverse", "tidymodels", "knitr", "tidyREDCap", 
  "skimr", "gtsumamry", "themis", "vip", "table1", "gt", "janitor", "usethis")
)
# remotes::install_github()
```

## Raw Data

The `raw2019.rds` file contains the raw data from the Youth Risk Behavior Surveillance System (YRBS) for the year 2019.

The `raw2021.rds` file contains the raw data from the Youth Risk Behavior Surveillance System (YRBS) for the year 2021.

YRBS is a biennial survey conducted by the Centers for Disease Control and Prevention (CDC) to monitor health-risk behaviors among youth in the United States. The dataset provides valuable information on various behaviors that contribute to the leading causes of death and disability among adolescents.

The YRBS 2019 and 2021 dataset includes a wide range of topics, such as:

-   Behavioral Risk Factors: Information related to health-risk behaviors, including but not limited to tobacco use, alcohol and drug use, sexual activity, unhealthy dietary habits, and lack of physical activity.

-   Mental Health and Suicide-Related Data: Data pertaining to mental health issues, depression, self-harm, suicide ideation, and suicide attempts among young individuals.

-   Demographic Information: Basic demographic details such as age, gender, race/ethnicity, and grade level.

-   School-Related Factors: Data related to school attendance, academic performance, and other school-related behaviors.

-   Violence and Safety: Information about experiences with violence, bullying, and safety concerns.

-   Protective Factors: Data on factors that promote positive youth development and well-being.

## License:

The project is currently under [CC0 license](https://choosealicense.com/licenses/cc0-1.0/). Please refer to the LICENSE file for more details.

## Directories

**`data` Directory:** This directory contains the essential datasets used in the project.

-   "raw2019.rda": The raw data set for the year 2019, transformed and saved as an .rda file for easy integration and analysis in R.
-   "raw2021.rda": The raw data set for the year 2021, similarly stored as an .rda file.
-   "cleaned2019.rda": The cleaned version of the 2019 data set, which will be generated after running the cleaning scripts.
-   "cleaned2021.rda": The cleaned version of the 2021 data set, obtained after applying the data cleaning scripts.

**`inst` Directory:**

"extData" Folder:

- This folder contains the necessary files used during the data retrieval process.

- The SPSS syntax file used to download the raw data sets from the official CDC website.

- An ASCII file required for data conversion during the SPSS-to-.rda transformation.

- The raw SPSS data sets downloaded from the CDC, before conversion to .rda format

 "scripts" Folder:

-  This folder holds the scripts utilized throughout the data cleaning and .rda file creation process.

## Ordered Analysis Pipeline/ Workflow

Run these file in order from raw processing to publication.

1.inst/extData/2019XXH-SPSS.sps and 2021XXH-SPSS.sps

2.inst/extData/creatingRDA_data.R

3.inst/extData/creatingCleanYRBS2019.R and creatingCleanYRBS2021.R
