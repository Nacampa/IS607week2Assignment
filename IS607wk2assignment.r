# IS607 Week 2 Assignment - Neil Acampa

require(stringr)
# A) Assign five individuals to a vector named queue
queue <- c("James","Mary","Steve","Alex","Patricia")
queue
# B) Update the queue for the arrival of Harold
queue <- c(queue,"Harold")
queue
# C) Update the queue to reflect that James has just checked out
pos = match("James",queue)
queue = queue[-pos]
queue

# D) Update the queue to reflect that Pam has talked her way in front of Steve
L = length(queue)
queue1 <- queue[2:5]
queue <- c(queue[1],"Pam",queue1)
queue

# E) Update the queue to to reflect the fact that Harold has grown impatient and Left
pos = match("Harold",queue)
queue = queue[-pos]
queue

# F) Update the queue to reflect the fact that Alex has left
pos = match("Alex",queue)
queue = queue[-pos]
queue

# G) Find the position of Patricia
pos = match("Patricia",queue)
cat("Patricia is in position", pos, "in the Queue\n")

# H) Count the number of people in the Queue
L = length(queue)
L


# 2).  Modify the answer in problem 21 from quiz1 so that when the quadratic 
#      is implemented meaningful output is given whether there are 1,2 or 0 solutions
#      b +/- sqrt(b^2 -4ac) / 2(a)

#      D = D(iscriminant) = b^2 - 4ac 
#      if D > 0: 2 solutions
#      if D = 0: 1 solution
#      if D  <0: 0 real solutions 
#      Below are 3 examples of quadratics with 2,1 and 0 solutions 


# Example 1

a = 1
b = 4
c = 3

# Determine the number of real soltuions using the Discriminant
d = b^2 - 4 *(a*c)

if (d > 0) {
  solutions = 2
} else {
  if (d == 0) {
    solutions =1
  } else {
    solutions = 0
  }
}

if (solutions > 0) {
  cat("The number of solutions for Quadratic equation with coeficients: a, b, c = ", a,",", b,",", c, " is: ", solutions, "\n")
} else {
  cat("No real solutions for Quadratic with a,b,c = ", a,",", b,",", c, "\n")
}

if (solutions != 0) {
  d = sqrt(d)
  sol1 = ((-b + d) / 2*a)
  sol2 = ((-b - d) / 2*a)
  cat("Solution1 = ",sol1, "\n")
  if (solutions > 1) {
    cat("Solution2 = ",sol2, "\n")
  }
}

# Example 2
a = 4/3
b = -2
c = 3/4

# Determine the number of real solutions
d = b^2 - 4 * (a*c)

if (d > 0) {
  solutions = 2
} else {
  if (d == 0) {
    solutions =1
  } else {
    solutions = 0
  }
}

if (solutions >0) {
  cat("The number of solutions for Quadratic equation with coeficients: a, b, c = ", a,",", b,",", c, " is: ", solutions, "\n")
} else {
  cat("No real solutions for Quadratic with a,b,c = ", a,",", b,",", c,  "\n")
}
if (solutions != 0) {
  d = sqrt(d)
  sol1 = (-b + d) / 2*a
  sol2 = (-b - d) / 2*a
  cat("Solution1 = ",sol1, "\n")
  if (solutions > 1) {
    cat("Solution2 = ",sol2, "\n")
  }
  
}


# Example 3

a = 2
b = 5
c = 5
# Determine the number of real solutions
d = b^2 - 4 * (a*c)

if (d > 0) {
  solutions = 2
} else {
  if (d == 0) {
    solutions =1
  } else {
    solutions = 0
  }
}



if (solutions >0) {
  cat("The number of solutions for Quadratic equation with coeficients: a, b, c = ", a,",", b,",", c, " is: ", solutions, "\n")
} else {
  cat("No real solutions for Quadratic with a,b,c = ", a,",", b,",", c,  "\n")
}
if (solutions != 0) {
  d = sqrt(d)
  sol1 = (-b + d) / 2*a
  sol2 = (-b - d) / 2*a
  cat("Solution1 = ",sol1, "\n")
  if (solutions > 1) {
    cat("Solution2 = ",sol2, "\n")
  }
}



# 3> Use R to determine the number of numbers from 1-1000 that are not 
#    Divisible by 3,7,11 

total=0
for (i in 1:1000) {
  if ((i %% 3) == 0) {
    total=total+1
  } else {
    if ((i %% 7) == 0) {
      total=total+1
    } else {
      if ((i %% 11) == 0) {
        total=total+1
      }
    }
  }
}
cat("The total numbers from 1-1000 that are not divisible by 3, 7 or 11 are: ", total, "\n")



# 4). Write R code to input constants f,g and h and determine if the form a Pythogorean triple
#
# Input 3 numbers, valiate numeric, find max and use the Pythagorean Therum to validate
# a^2 + b^2 = c^2

# Not yet able to get readline to work 
#valid = 0
#f <- readline("Please enter the first number: ")
#f = as.numeric(f)
#g <- readline("Please enter a second number: ")
#g = as.numeric(g)
#h <- readline("Please enter a third number ")
#h = as.numeric(h)

# Just manually input numbers

f = 10
g = 8
h = 6
pvec <- c(f,g,h)
# Find maximum and square
c = pvec[which.max(pvec)]
cat("The Maximum number is:                            ", c, "\n")
csq = c^2
cat("The square of the Maximum number is:              ", csq, "\n")

# Find elements less than maximum
nc <- pvec[-which.max(pvec)]
cat("The other 2 numbers are:                          ", nc, "\n")

# Square and sum vector
ncsq = sum(nc^2)
cat("The sum of the squares of the other 2 numbers is: ", ncsq, "\n")

if (csq == ncsq) {
  cat("Numbers:  ",f,",", g,",", h, " form a Pythagorean Triple\n")
} else {
  cat("Numbers:  ", f,",", g,",", h, " do not form a Pythagorean Triple\n")
}


f = 6
g = 5
h = 5
pvec <- c(f,g,h)
# Find maximum and square
c = pvec[which.max(pvec)]
cat("The Maximum number is:                            ", c, "\n")
csq = c^2
cat("The square of the Maximum number is:              ", csq, "\n")

# Find elements less than maximum
nc <- pvec[-which.max(pvec)]
cat("The other 2 numbers are:                          ", nc, "\n")

# Square and sum vector
ncsq = sum(nc^2)
cat("The sum of the squares of the other 2 numbers is: ", ncsq, "\n")

if (csq == ncsq) {
  cat("Numbers:  ",f,",", g,",", h, " form a Pythagorean Triple\n")
} else {
  cat("Numbers:  ", f,",", g,",", h, " do not form a Pythagorean Triple\n")
}















