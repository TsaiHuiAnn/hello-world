#HW8
#Q1
#a
software_time <- read.table("service_resolution.txt", header=T)
# Run block design ANOVA with treatments (software) and blocks (process)
time_aov <- aov(time ~ factor(software) + factor(process) + factor(software):factor(process) , data=software_time) 
summary(time_aov)
# Run block design ANOVA with treatments (software) but no block (process)!
time_aov2 <- aov(time ~ software + process, data=software_time)
summary(time_aov2)
# Draw ???interaction??? plot of block (controller) lines of different treatments (systems)
with(software_time, interaction.plot(x.factor=process, trace.factor=software, response=time))
# Since the Pr(interaction) we have is 0.07902.
# The significance level smaller than 0.07902 would be wrong
# 10% > 0.00506 --correct
# 5% > 0.00506 --correct
# 1% > 0.00506 --correct
# 0.1% < 0.00506 --wrong

# We can tell from the plot, 
# and choose the minimun of the mean of time: Process2 and software2

