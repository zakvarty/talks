library(palmerpenguins)
library(dplyr)
library(ggplot2)
library(glue)
library(rpart)
library(rpart.plot)

head(penguins)

cols_to_keep
peng <- penguins %>% select(species, bill_length = bill_length_mm, bill_depth = bill_depth_mm)

ggplot() +
  geom_point(aes(x = bill_length, y = bill_depth, colour=species), data = peng) +
  theme_minimal()

tree <- rpart(species ~ bill_length + bill_depth, data = peng, method = "class")
rpart.plot(tree, main = "Decision Tree for the Palmer Penguins Dataset")

peng_grid <- tibble(
  bill_length = rep(seq(30, 60, by = 0.1), each = 131),
  bill_depth = rep(seq(12, 25, by = 0.1), times = 301),
)

peng_grid$prediction <- rpart.predict(tree, newdata = peng_grid, type = "class")

ggplot() +
  geom_raster(aes(x = bill_length, y = bill_depth, fill=prediction), data = peng_grid, alpha = 0.3) +
  geom_point(aes(x = bill_length, y = bill_depth, colour=species), data = peng) +
  theme_minimal()


#--------------
set.seed(1234)
for (b in 1:3) {
  i <- sample(1:nrow(peng), nrow(peng), replace = TRUE)
  peng_b <- peng[i,]

  ggplot() +
    geom_point(aes(x = bill_length, y = bill_depth, colour=species), data = peng, alpha = 0.5, size = 2) +
    lims(x = c(30,60), y = c(12.5, 22.5)) +
    theme_minimal() +
    ggtitle("Original Data")

  ggplot() +
    geom_point(aes(x = bill_length, y = bill_depth, colour=species), data = peng_b, alpha = 0.5, size = 2) +
    lims(x = c(30,60), y = c(12.5, 22.5)) +
    theme_minimal() +
    ggtitle("Resampled Data", glue("bootstrap sample b={b}"))

  tree_b <- rpart(species ~ bill_length + bill_depth, data = peng_b, method = "class")
  rpart.plot(tree_b, main = "Decision Tree for the Palmer Penguins Dataset", sub = glue("Bootstrap sample b={b}"))

  peng_grid[,b+3] <- rpart.predict(tree_b, newdata = peng_grid, type = "class")
  names(peng_grid)[b + 3] <- glue("b_{b}")

  ggplot() +
    geom_raster(aes(x = bill_length, y = bill_depth, fill = .data[[glue("b_{b}")]]), data = peng_grid, alpha = 0.3, ) +
    geom_point(aes(x = bill_length, y = bill_depth, colour=species), data = peng_b, alpha = 0.5) +
    theme_minimal() +
    ggtitle("Decision Tree Predictions", glue("bootstrap sample b={b}"))


}
