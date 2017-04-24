#
# a simple example program showing use of with
#

with(cars, {
  boxplot(dist)
  title('Stopping distance (ft)')
  boxplot(speed)
  title('Speed (mph)')
})
