# Mmax talk outline: Using small earthquakes to learn about the largest ones. 

## Key Take Aways 

- M_max is a probability 0 event. We care about what happens as we approach M_max 
- To understand this behavior we must be able to extrapolate to magnitudes greater than we have already seen. Extreme value theory is the framework that allows us to do this, 
-  In the same way that magnitudes within our observed range of magnitudes are informative at extrapolative levels, small events 


## Motivating the use of EVT

- Why standard approaches are not okay  
- Used for hazard assessment across basically all other natural hazards
- Limit result that we use as an approximation: analogy to physical models and CLT 
 
## Key points of EVT

- Usual intro to extremes slide 
- models for threshold exceedances: the GPD 
- key properties of the GPD: Gutenberg Richter as a special case, interpretation of shape parameter, link x^+ to Mmax, threshold stability 
 
## Making the most of the available data

- HUGE investment to improve earthquake detection. Not used as standard. 
- more data > more precise estimates of EQ size distribution and UEP. 
- Is adding smaller events really going to help? 
- Brief simulation study description and results  
 
## Selecting a time-varying threshold 

- Visual assessment of Mc by linearity of N-M plot
- Bias-Variance trade off: we want the threshold as low as possible, but no lower.
- QQ plot works in similar way 
- Convert this to a numeric method that can be automated while accounting for uncertainties in: fitted model, EQ magnitudes, which EQs are above the threshold. 
- Link to paper for details.
 
## Applying this to GGF 

- Sigmoid threshold + Bayesian Optimisation to pick best parameters
- Stochastic optimisation of noisy function evaluations, but stable results
- Able to recover true installation period 
- Uses massively more data
- Greatly increases certainty about high return levels ( + mmax < infty)
 
## Implications for Prediction 

-	Two sources of uncertainty: size and number of events 
-	Predicting event counts requires additional modelling
-	Can take a simulation based approach for generic count models but v. computationally expensive to sample into tails 
-	If assume a Poisson count then things become tractable – Poisson + GPD => GEV-like 
-	Accounting for uncertainty in Poisson mean Gamma + Poisson + GPD 
-	Taking observed count in 2020 as Poisson mean for 2022 construct LR plots for validation.


## Extensions that answer important questions

- How does choice of measurement scale impact the conclusions (Hartog & Bierman)
- Can you do this without aggregating over space (Murphy et al)
- Assumption of i.i.d. magnitudes, until recently taken as standard. Harder problem b/c we need to separate effects.
- How does this impact prediction: combining uncertainty about earthquake number and size. 
 
## Key take-aways:

- EVT can and should be applied to seismic hazards. All big events matter, not just the largest.
- Small events are informative about large events because they push everything further into the tails. 
- Include more small events by picking a time-varying threshold
- Justifies expenditure and allows us to conclude from data alone that mmax < infty (at the 5% level) for the first time 
