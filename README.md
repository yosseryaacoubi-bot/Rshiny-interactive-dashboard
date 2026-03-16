# R Shiny Poverty Dashboard

## Project Overview
The R Shiny Poverty Dashboard is an interactive web application that provides insights into poverty-related data. The dashboard allows users to visualize and analyze various metrics related to poverty, helping policymakers and researchers understand trends and make informed decisions.

## Features
- Interactive data visualizations
- Real-time data filtering
- User-friendly interface
- Exportable reports

## Technologies
- R
- Shiny
- ggplot2
- dplyr
- plotly

## Installation Instructions
1. Install R from [CRAN](https://cran.r-project.org/).
2. Install the necessary packages:
   ```R
   install.packages(c('shiny', 'ggplot2', 'dplyr', 'plotly'))
   ```
3. Clone the repository:
   ```bash
   git clone https://github.com/yosseryaacoubi-bot/Rshiny-interactive-dashboard.git
   ```
4. Set working directory:
   ```R
   setwd('path-to-cloned-repo')
   ```
5. Run the application:
   ```R
   shiny::runApp()
   ```

## Project Structure
```
Rshiny-interactive-dashboard/
├── app.R          # Main application file
├── www            # Static resources (CSS, images, JS)
└── data           # Dataset files
```