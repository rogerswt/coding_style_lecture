#
# a simple example program showing use of with, with clearer indenting
#

with(cars, {
            boxplot(dist)
            title('Stopping distance (ft)')
            boxplot(speed)
            title('Speed (mph)')
          }
)
