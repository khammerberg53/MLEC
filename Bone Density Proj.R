library(ggplot2)

bone <- read.csv('/Users/kylehammerberg/Desktop/ML Extra Credit/spnbmd.csv')

### Generate scatter plot of data
ggplot(bone) + aes(age, spnbmd, color=sex)  + geom_point()


### Fit splines to both male and female bone density data 
### geom_point to create scatter plot 
### geom_smooth to fit splines 
ggplot(bone) + aes(age, spnbmd, color=sex)  + geom_point() + 
    geom_smooth(formula = y~splines::bs(x, knots=c(10,15,20)), method="lm")

### Fit splines to bone density by race
ggplot(bone) + aes(age, spnbmd, color=ethnic)  + geom_point() + 
    geom_smooth(formula = y~splines::bs(x, knots=c(10,15,20)), method="lm")
