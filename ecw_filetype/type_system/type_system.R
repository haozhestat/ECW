#--------------------------------------**--------------------------------------#
#  File Name: type_system.R
#  Purpose:
#
#  Creation Date: 07-03-2016
#  Last Modified: Mon Mar  7 15:18:42 2016
#  Created By:
#
#--------------------------------------**--------------------------------------#
#
#  FORTRAN and C: 
#  source('~/R/shlib/C_FORTRAN.shlib.r')
#  .Fortran("subroutine name",as.integer(input1),as.double(input2), etc)
#


# Basic Types


# Logical
TRUE

class(TRUE)
typeof(TRUE)
dim(TRUE)

lis <- list("x", "y", "z")

i <- c(2, 3)

lis[i]

lis[[2]]

x <- 2.3
class(x)
