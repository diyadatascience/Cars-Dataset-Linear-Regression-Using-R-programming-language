library(MASS)
data('Cars93')

# 1. Replace missing observations with column means
Cars93 <- sapply(Cars93, function(x) ifelse(is.na(x), mean(x, na.rm = TRUE), x))

# 2. Fit a linear model with Price as dependent variable
Cars93 <- as.data.frame(Cars93)
model <- lm(Price ~ ., data = Cars93)
summary(model)

# 3. All necessary graphs using GGplot
# Plot 1: Price vs Min.Price (as an example of a significant variable relationship)
library(ggplot2)
ggplot(Cars93, aes(x = Min.Price, y = Price)) +
  geom_point() +
  geom_smooth(method = "lm", color = "blue") +
  labs(title = "Price vs Min.Price", x = "Min.Price", y = "Price")

# Plot 2: Distribution of Price
ggplot(Cars93, aes(x = Price)) +
  geom_histogram(binwidth = 5, fill = "pink", color = "black") +
  labs(title = "Distribution of Car Prices", x = "Price", y = "Count")

# Plot 3: Residuals vs Fitted Values from the Linear Model
ggplot(data = model, aes(x = .fitted, y = .resid)) +
  geom_point() +
  geom_hline(yintercept = 0, linetype = "dashed", color = "red") +
  labs(title = "Residuals vs Fitted Values", x = "Fitted Values", y = "Residuals")

# 4. The explanatory variables that are most influential 
significant_variables <- summary(model)$coefficients[,4] < 0.05
names(significant_variables[significant_variables])

# 5. Calculate VIF to check for multicollinearity
library(car)
vifs <- vif(model)
print(vifs)

# 6. Omitting the suspected variables and refitting the model
refined_model <- stepAIC(model, direction = "both")
summary(refined_model)

# 7. Perform model utility test
anova(model, refined_model)

# 8. Find the 99% confidence interval of the slopes for the refitted model
confint(refined_model, level = 0.99)  

