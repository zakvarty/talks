# A very brief introduction to statistical hazard modelling

## Description 

Slides for the an introductory talk on statistcal approaches to hazard modelling, originally produced for masters students in statistics at the University of Southampton.

![]("images/preview.png")

### Abstract

This talk will provide a whirlwind introduction to the core topics in statistical hazard modelling. 

I'm giving you the best bits of a five week course in just 30 minutes. That means this is going to be fast. Don't worry about understanding every detail. The point of this talk is simply for you to become aware of some foundational results/models in hazard modelling. 

Towards the end of the talk I'll allude to some ways we can add non-stationarity into these models and to point you towards resources that you can use to explore these ideas at your own pace. 

- why do we care about hazard modelling?
- risk vs hazard
- from OLS to EVT
- ETT and UETT
- GEV for block maxima
- GPD for peaks over threshold 
- adding in non-stationarity "GLM-style"
- Poisson point processes
- relaxations of the Poisson model
- bringing it all back together
- resources to get started on your own

## Getting Started

These slides are written in Quarto, they include some R code and are exported to pdf via Google Chrome. 

1. If you have not already done so, [download](https://cran.r-project.org/) and install the latest version R for your operating system. Detailed instructions can be found at this [link](https://stat545.com/install.html).

2. Open R and install the required dependencies from CRAN using the following code: 

```
go_figure_packages <- c(
	"countdown",
	"datasauRus",
	"dplyr",
	"ggplot2",
	"knitr",
	"pander",
	"readxl",
	"tidyr"
)

install.packages(go_figure_packages)

```

3. Install the `{devtools}` package and use this to install  `{zvplot}` from Github 

```
install.packages("devtools")
```

```
devtools::install.github("zakvarty/zvplot")
```

3. If you have not already done so, install [Quarto](https://quarto.org/docs/get-started/) to your computer.

4. Compile the HTML slides

Run the following code at the command line to render the HTML slides from the source files. 

```
quarto render 2023-RSS-go-figure.qmd
```

5. Export HTML slides to PDF using Google Chrome

Other browsers can be used, but at the time of writing Chrome is currently the only official recommend method. 

	- Open the newly created `2023-RSS-go-figure.html` in Google Chrome
	- Press "e" to enter export mode 
	- From the Chrome menu, select File > Print
	- Set "destination" to "Save to PDF"
	- Ensure that "Print headers and footers" and "Print backgrounds" are both selected
	- Select "Save" 