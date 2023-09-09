# RSS 2023 - Go Figure! 

## Description 

Slides for the talk "Go Figure!", delivered at the pre-conference workshop of the Royal Statistical Society Conference 2023. 

![]("images/rss-screenshot.png")

### Abstract

As the saying goes, a picture is worth a thousand words. If that’s true then the importance of high quality figures should not be underestimated. In this session, we’ll explore how you can effectively support and explain your research using visualisations.

We’ll begin with some design principles to help your figures to clearly convey your intended meaning. We’ll then develop strategies to adapt your figures for different audiences and introduce tools to make them accessible to a broader audience. To put your newfound knowledge to the test, we’ll conclude the session with a game of broken picture telephone (including prizes for the winners!). 

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
quarto render 2023-RSS-slides.qmd
```

5. Export HTML slides to PDF using Google Chrome

Other browsers can be used, but at the time of writing Chrome is currently the only official recommend method. 

	- Open the newly created `2023-RSS-slides.html` in Google Chrome
	- Press "e" to enter export mode 
	- From the Chrome menu, select File > Print
	- Set "destination" to "Save to PDF"
	- Ensure that "Print headers and footers" and "Print backgrounds" are both selected
	- Select "Save" 