#!/usr/bin/env Rscript
# Tai Sakuma <tai.sakuma@gmail.com>

##____________________________________________________________________________||
report <- function(x, y)
  {
    cat(paste('  mean(y) = ', mean(y), '\n', sep = ''))
    cat(paste('  mean(x) = ', mean(x), '\n', sep = ''))
    cat(paste('mean(y/x) = ', mean((y/x)[x>0]), '\n', sep = ''))
    cat(paste('   var(y) = ',  var(y), '\n', sep = ''))
    cat(paste('   var(x) = ',  var(x), '\n', sep = ''))
    cat(paste(' cov(y,x) = ',  cov(y, x), '\n', sep = ''))
    cat(paste(' var(y/x) = ',  var((y/x)[x>0]), '\n', sep = ''))
  }

##____________________________________________________________________________||
x1 <- rpois(10000, 10)
x2 <- rpois(10000, 2)
x3 <- rpois(10000, 30)

x <- x1 + x3
y <- x2 + x3

cat('correlation\n')
report(x, y)

cat('\n')
##____________________________________________________________________________||
x <- rpois(10000, 40)
y <- rpois(10000, 32)

cat('no correlation\n')
report(x, y)

##____________________________________________________________________________||
