my_plot <- prcomp(Week3_assignment_R_Copy[,-1], scale. = TRUE)
my_plot
my_plot$x
summary(my_plot)
my_plot2 <- cbind(Week3_assignment_R_Copy, my_plot$x[,1:2])
my_plot2
library(ggplot2)
ggplot(my_plot2, aes(PC1, PC2))+
  geom_point(aes(shape=Location), size = 2)+
  scale_shape_manual(values = c(1, 2, 3, 4, 5, 6, 7, 8, 9))
ggplot(my_plot2, aes(PC1, PC2))+
  geom_point(aes(col=Location), size = 2)+
  scale_shape_manual(values = c(1, 2, 3, 4, 5, 6, 7, 8, 9))
