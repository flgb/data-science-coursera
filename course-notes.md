# My links and notes

## Git

* [Simple git guide](http://rogerdudler.github.io/git-guide/)
* [Git Inside out](https://codewords.recurse.com/issues/two/git-from-the-inside-out)

## R

 * [R at Microsoft - Revolution Analytics](http://blog.revolutionanalytics.com/2015/06/r-at-microsoft.html)
 * [R in SQL Server](http://blog.revolutionanalytics.com/2015/05/r-in-sql-server.html)

# An Introduction to Statistical Learning with Applications in R (ISLR)

[ISLR Course Link](http://www.dataschool.io/15-hours-of-expert-machine-learning-videos/)

## Chapter 2: Statical Learning

[Slides](https://class.stanford.edu/c4x/HumanitiesScience/StatLearning/asset/statistical_learning.pdf)

[Playlist](https://www.youtube.com/playlist?list=PL5-da3qGB5IDvuFPNoSqheihPOQNJpzyy)

### Notes

* Notation
** Y: response, target we wish to predict
** X1, X2, X3: feature, input, or predictor
** X = (X1, X2, X3): input vetor
** Y = f(X) + e: e captures measurement errors

* Use f(X) to make predictions of Y at new points X = x (little x is instances)

* Use f(X) to understand which components of X = (X1, X2, ..., Xp) are important (p components)

* f(4) = E(Y|X = 4) means expected value (average) of Y given 4 (conditional average). This is called the *regression function*

* regession function f(x)
** f(x) = f(x1,x2,x3) = E(Y|X1 = x1, X2 = x2, X3 = x3) 
** Is the *ideal* or *optimal* predictor of Y with regard to mean-squared prediction error
** f(x) = E(Y|X = x) is the function that minimised E((Y - g(X))^2|X = x| over all functions g at all points X = x
** e = Y - f(x) is the irreduible error
** For any estimate f^(x) of f(x) [the true optimate function] we have:
*** The prediction error
*** E[(Y - f^(X))^2|X = x| = [f(x) - f^(x)]^2 + Var(e)
*** Expected value of the square of the difference between Y and our function for some value x is equal to the square of the difference between the ideal function and our function and the variance of the error 

* Nearest neigbor averaging
** How can we do conditional averaging if we don't have enough points to average?
** We can relax the definition and look at the values of x in the neigborhood of points
** f^(x) = Ave(Y|X e N(x)), where N(x) is the neigborhood
** I.e. we average the points in the neigborhood
** Can work well for small p (number of dimensions, or X1, X2, Xp and large n (so plenty of points to average)
* These are 'Smoothers' 

* Curse of dimensionality is that finding enough points gets harder to enough points in the neighboorhood

* A linear parametric model or a quadratic iparameteric model avoids the problem because it provides structure, however it almost is never the best solution

* We can use a more flexible structured regression model like *thin-plate-spline*. We can tune the model with parameters, but this can lead to overfitting

* Linear models are easy to interpret; thin-plante splines are

* We prefer 'parsimony' versus black-box -- a simpler model with fewer variables 



