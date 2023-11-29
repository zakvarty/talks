# RSS 2023 - Go Figure! 

## Description 

Slides for the talk "Getting Your Work to Work in Academia (and Beyond!)", delivered at the Royal Statistical Society Conference 2023 during a session on reproducible working practices. 

![]("images/rss-screenshot.png")

### Abstract

You can’t solve a hard problem all in one go. One example of this is the ongoing replication crisis faced by the academic world, where published results can’t be verified by independent repetition of the original study. So, what do we do when we can’t solve a hard problem straight away? We find a sub-problem that we can solve and use that as a steppingstone towards our final goal. In the case of the replication crisis, we can narrow our scope to reproducibility: given the same experimental or observational data can the original results be recovered?

This talk will focus on the ways that reproducibility interacts with three aspects of academic (and non-academic) work: research, teaching, and the training our future colleagues. I’ll share my experiences of moving toward a more reproducible way of working and argue that the individual and collective benefits of working reproducibility more than justify the extra effort this requires.

## Getting Started

These slides are written in Quarto, they include some R code and are exported to pdf via Google Chrome. 

1. If you have not already done so, [download](https://cran.r-project.org/) and install the latest version R for your operating system. Detailed instructions can be found at this [link](https://stat545.com/install.html).

2. Open R and install the required dependencies from CRAN using the following code: 

```
required_packages <- c(
	"knitr",
	"pander"
)

install.packages(required_packages)

```

3. If you have not already done so, install [Quarto](https://quarto.org/docs/get-started/) to your computer.

4. Compile the HTML slides

Run the following code at the command line to render the HTML slides from the source files. 

```
quarto render 2023-RSS-getting-your-work-to-work.qmd
```

5. Export HTML slides to PDF using Google Chrome

Other browsers can be used, but at the time of writing Chrome is currently the only official recommend method. 

	- Open the newly created `2023-RSS-getting-your-work-to-work.html` in Google Chrome
	- Press "e" to enter export mode 
	- From the Chrome menu, select File > Print
	- Set "destination" to "Save to PDF"
	- Ensure that "Print headers and footers" and "Print backgrounds" are both selected
	- Select "Save" 