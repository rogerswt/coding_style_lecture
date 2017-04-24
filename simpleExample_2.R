#
# a simple example program showing use of attach
#

data(cars)
attach(cars)
boxplot(dist)
title('Stopping distance (ft)')
boxplot(speed)
title('Speed (mph)')
