
# To compile
# The notebook icon 📄 appears just under the R script file name. 
# By hovering the mouse over it, you’ll see the shortcut Compile Report (Ctrl + Shift + K or (Cmd + Shift + K in Mac). 
# Click on the icon. Then, R will ask what Report output format you prefer. Choose MS Word. Finally, click Compile. That’s it. The Word file will launch when it is done.

# Test                                                                         
rm(list = ls())     # Remove objects
# setwd("")
getwd()

# Print R's built-in dataset
cars 

summary(cars)

p1_carspeed <- hist(cars$speed)
p1_carspeed
