---
title: "Untitled"
author: "Rimjhim Saxena"
date: "2023-03-03"
output:
  pdf_document: default
  html_document: default
  word_document: default
---

Loading data



Panel regression  - by Job Sector



\tiny

Table: Sector Realloacation

|                                 | Agriculture | Construction | Manufacture |  Mining  |  Service  |
|:--------------------------------|:-----------:|:------------:|:-----------:|:--------:|:---------:|
|tmax                             |  4.1149**   |   -0.3492    |  -1.1366+   | -0.2659  | -4.7253** |
|                                 |  (1.5427)   |   (0.2473)   |  (0.6029)   | (0.6977) | (1.7705)  |
|Num.Obs.                         |    2016     |     1803     |    1890     |   576    |   2018    |
|R2                               |    0.450    |    0.387     |    0.601    |  0.711   |   0.369   |
|R2 Adj.                          |    0.309    |    0.208     |    0.493    |  0.475   |   0.209   |
|RMSE                             |    13.47    |     4.36     |    5.35     |   2.50   |   11.04   |
|FE: as.factor(State_District_72) |      X      |      X       |      X      |    X     |     X     |

__Note:__
^^ + p < 0.1, * p < 0.05, ** p < 0.01, *** p < 0.001



Table: Sector Realloacation

|                                 | Agriculture | Construction | Manufacture |  Mining   |  Service   |
|:--------------------------------|:-----------:|:------------:|:-----------:|:---------:|:----------:|
|temp_effective                   |  5.5216***  |  -0.0340***  | -0.1489***  | -0.0983** | -0.3838*** |
|                                 |  (0.3654)   |   (0.0050)   |  (0.0308)   | (0.0363)  |  (0.0524)  |
|Num.Obs.                         |    2016     |     1803     |    1890     |    576    |    2018    |
|R2                               |    0.598    |    0.402     |    0.607    |   0.715   |   0.394    |
|R2 Adj.                          |    0.496    |    0.228     |    0.500    |   0.482   |   0.240    |
|RMSE                             |    11.51    |     4.31     |    5.31     |   2.48    |   10.82    |
|FE: as.factor(State_District_72) |      X      |      X       |      X      |     X     |     X      |

__Note:__
^^ + p < 0.1, * p < 0.05, ** p < 0.01, *** p < 0.001

Panel regression - by Exposure




Table: Sector Realloacation

|                                             | Exposed  | Insular  |
|:--------------------------------------------|:--------:|:--------:|
|temp_effective                               | -0.0008  | -0.0246  |
|                                             | (0.0008) | (0.0685) |
|Num.Obs.                                     |   6285   |   2018   |
|R2                                           |  0.750   |  0.746   |
|R2 Adj.                                      |  0.702   |  0.489   |
|RMSE                                         |   6.66   |   7.00   |
|FE: as.factor(State_District_72)             |    X     |    X     |
|FE: as.factor(round)                         |    X     |    X     |
|FE: as.factor(State_Region)^as.factor(round) |    X     |    X     |

__Note:__
^^ + p < 0.1, * p < 0.05, ** p < 0.01, *** p < 0.001


# Ag - NonAg






\tiny

Table: Sector Realloacation - Ag/Non Ag

|                                      |    0     |    1     |
|:-------------------------------------|:--------:|:--------:|
|temp_effective                        |  0.0009  | -0.1525  |
|                                      | (0.0012) | (1.4381) |
|Num.Obs.                              |   6277   |   2010   |
|R2                                    |  0.757   |  0.759   |
|R2 Adj.                               |  0.734   |  0.668   |
|RMSE                                  |   8.60   |   8.88   |
|FE: State_District_72                 |    X     |    X     |
|FE: as.factor(State)^as.factor(round) |    X     |    X     |

__Note:__
^^ + p < 0.1, * p < 0.05, ** p < 0.01, *** p < 0.001



```
## `geom_smooth()` using formula = 'y ~ x'
```

![](09panel-regs_files/figure-latex/unnamed-chunk-9-1.pdf)<!-- --> 

```
## `geom_smooth()` using formula = 'y ~ x'
```

![](09panel-regs_files/figure-latex/unnamed-chunk-9-2.pdf)<!-- --> 
