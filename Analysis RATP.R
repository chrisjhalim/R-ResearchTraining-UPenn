data <- read.csv("/Users/christopherhalim888/OneDrive - PennO365/Spring 2021/RATP/my_data_selected.csv") 

cor.test(data$Q1_num, data$Q2_num, method = c("pearson", "kendall", "spearman"))

boxplot(data$Q1_num ~ data$Q2_num, main = "Mental Health Support and Mental Health Condition during Covid-19 Pandemic", xlab = "Mental Health Condition during Covid-19 Pandemic", ylab = "Mental Health Support",xaxt ="n")
axis(1, at = 1:5, labels = c("Extremely more negative","Slightly more negative", "Neither more positive nor more negative", "Slightly more positive", "Extremely more positive"))

stripchart(data$Q1_num ~ data$Q2_num, vertical = TRUE, data = data, 
           method = "jitter", add = TRUE, pch = 20, col = 'blue')