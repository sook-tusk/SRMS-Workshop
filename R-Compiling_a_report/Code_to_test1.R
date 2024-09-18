0.369 - 0.449
sqrt( (0.369*(1-0.369)/747) +  (0.449*(1-0.449)/434) )
-0.08 / 0.02969415
qnorm(0.995) # Get critical-value
pnorm(2.576) # Get probability
(5.36 - 5.01) / sqrt( (2.56+2.4)^2/(2964 + 4378) ) 

      # To compile 
# The notebook icon 📄 appears just under the R script file name. 
# By hovering the mouse over it, you’ll see the shortcut Compile Report (Ctrl + Shift + K or (Cmd + Shift + K in Mac). 
# Click on the icon. Then, R will ask what Report output format you prefer. Choose MS Word. Finally, click Compile. That’s it. The Word file will launch when it is done.

# Test                                                                         
rm(list = ls())     # Remove objects
# setwd("P:/R_AST")
getwd()

# Print R's built-in dataset
cars 

summary(cars)

p1_carspeed <- hist(cars$speed)
p1_carspeed
