
#### REGRESSION

# 1) COUNT DATA
train <- read.csv("regression_train_1.csv")
val <- read.csv("regression_val_1.csv")

#Modeling
mod <- lm(deltatm~.,data=train)
summary(mod)

#Prediction
pred <- predict(mod, newdata = val)
#install.packages('Metrics')
library(Metrics)
rmse(val$deltatm, pred)

#Model reduced to all significant coefficients
mod <- lm(deltatm~.-C_delta -P_delta -N_delta -L_delta -R_delta -H_delta -V_delta,data=train)
summary(mod)

#Prediction
pred <- predict(mod, newdata = val)
#install.packages('Metrics')
library(Metrics)
rmse(val$deltatm, pred)



# 2) STANDARDIZED DATA
train <- read.csv("regression_train_3.csv")
val <- read.csv("regression_val_3.csv")

#Modeling
mod <- lm(deltatm~.,data=train)
summary(mod)

#Prediction
pred <- predict(mod, newdata = val)
#install.packages('Metrics')
library(Metrics)
rmse(val$deltatm, pred)



#Modeling - significant coeffs
mod <- lm(deltatm~.-A_delta -1,data=train)
summary(mod)

#Prediction
pred <- predict(mod, newdata = val)
#install.packages('Metrics')
library(Metrics)
rmse(val$deltatm, pred)



