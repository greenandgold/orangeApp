---
title       : Prediction Model for Orange Tree Age
subtitle    : May 21, 2017
author      : 
job         : 
framework   : io2012        # {io2012, html5slides, shower, dzslides, ...}
highlighter : highlight.js  # {highlight.js, prettify, highlight}
hitheme     : tomorrow      # 
widgets     : []            # {mathjax, quiz, bootstrap}
mode        : selfcontained # {standalone, draft}
knit        : slidify::knit2slides
github:
  user: greenandgold
  repo: Orange
---

## About This Project

In this project, Rstudio is used to make a Shiny App. 

The project is for Coursera's [Developing Data Products](https://www.coursera.org/learn/data-products) course. 

---

## About The Shiny App

The Shiny App predicts the age of an orange tree, based on the tree trunk's circumference. 

The dataset [Orange](https://stat.ethz.ch/R-manual/R-devel/library/datasets/html/Orange.html) in the R datasets package contains circumference measurements over time for five orange trees. Here is a look at the dataset:


```r
head(Orange)
```

```
##   Tree  age circumference
## 1    1  118            30
## 2    1  484            58
## 3    1  664            87
## 4    1 1004           115
## 5    1 1231           120
## 6    1 1372           142
```

---

## How to use the App

To predict the age of your orange tree, measure its circumference in millimeters. Then enter that number into the slider in the App. 

Model 3 uses the data from all five trees, shown in this plot, and is probably the best model.


```r
plot(Orange$circumference, Orange$age)
```

![plot of chunk unnamed-chunk-2](assets/fig/unnamed-chunk-2-1.png)

---

## Where to Find the App

The App is here: (https://byanyothername.shinyapps.io/orange/)

And the code is here: (https://github.com/greenandgold/Orange)

Enjoy!



