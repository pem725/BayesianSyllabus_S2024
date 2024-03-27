# create a bayesian lm model using brms and then submit it to shiny stan
# to be used in a shiny app
# https://cran.r-project.org/web/packages/brms/vignettes/brms_multilevel.html

library(brms)
library(shinystan)

# Fit a simple linear regression model
fit <- brm(mpg ~ wt, data = mtcars)

# Submit the model to shinystan
launch_shinystan(fit)

