setwd("/Users/alexthomas/Documents/ZOOLOGY YEAR 2 /Y2 Semester 2 (Jan-June)/BIO261 Pop & Community Ecology/R Practice/03_02_24 Loops")

# Loop Practice 03_02_24 

# Load library tidyverse to access starwars data set: 
library(tidyverse)
# Using data set:
starwars

# Print names from starwars from iterations 1 - 5: 
for (i in 1:5) {
  print(starwars$name[i])
  
}

# Use a function in the loop to print all heights of characters in starwars data set: 
for (i in 1:length(starwars$height)) {
  print(starwars$height[i])
}

# Create an empty vector: 
tallness<- vector(
  mode="numeric",
  length=5)
# Add data points to new vector (height in metres instead of cm of starwars characters: 
for (i in 1:5) {
  tallness[i]<- starwars$height[i]/100
}
# Check new vector
tallness

# Creating a Break in Loop
# Break works by: Once "Darth Vader" has been reached, the list stops and does not carry on. 
for (x in starwars$name) {
  print(x)
  if(x=="Darth Vader"){
    break
  }
}

# Skipping a Data Point 
for (x in starwars$name) {
  if(x=="C-3PO"){ # if x == C-3P0 then skip the data point
    next
  }
 print(x) # otherwise print x 
 if(x=="Darth Vader"){
   break
 }
}

# Concatenate (join together elements of text) and Print, Function: cat() 
for (i in 1:5) {
  cat("The height of", starwars$name[i],"is",
      tallness[i], "meters\n") # "\n" means "create new line" 
}
