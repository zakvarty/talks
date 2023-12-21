## Applicant Visit Day Talk - Birthdays: Probability, Statistics and Data Visualisation 

## Talk overview 

A slide deck for an applicant visit day I gave in 2019, updated to use quarto rather than IOSlides. 

The presentation covers a bit of probability, statistics and data visualisation:

- Introduces the birthday "paradox", where the chance of sharing a birthday in a large crowd is surprisingly high.
  - It's not really a paradox, just unintuitive.
  - It requires a bunch of assumptions that we just don't know to be true.
  
- Looking at UK birth records, let's investigate whether they are reasonable. This covers:
  - Exploratory data visualisation
  - Considerations about data quality and edge cases
  - Hypothesis testing in action
  - Simulation bases approaches to hypothesis testing. 

## Shiny App  
In the old version of these slides there was also an embedded shiny app so that we could calculate the probability that two or more people in the room sharing a birthday. I've commented this out until I can work out how to get this going within revalJS slides, [shinylive](https://github.com/coatless-quarto/r-shinylive-demo/blob/main/index.qmd) seems like a promising solution.