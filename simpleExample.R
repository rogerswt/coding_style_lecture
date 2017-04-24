#
# a simple example program to illustrate the use of the editor
#

data(cars)
boxplot(cars$dist)
title('Stopping distance (ft)')
boxplot(cars$speed)
title('Speed (mph)')
