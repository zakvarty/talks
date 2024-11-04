# Imperial Mathematics Teaching Seminar

## Description 

Slides for my half of a reading group discussion at the Imperial Mathematics Teaching Seminar. Delivered jointly with Ioanna Papatsouma. 

![]("images/preview.png")

### Abstract

This session will explore the impact that personal tutoring can have on both students and staff. We will examine how personal tutoring influences academic success, student well-being, and staff-student relationships by summarising two studies covering the effectiveness of tutoring programs, their benefits and challenges for both students and staff.

The session aims to spark a discussion on best practices and potential improvements in the tutoring system and how it might be optimised to ensure a positive, supportive and sustainable system for everyone involved.

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