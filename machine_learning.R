//Multiple Linear Regression
linearRegression = function(train, test){
  
  pred = lm(CYCLES~col3+col4+col5+col6+col7 , data = train)
  
  library(MLmetrics)
  
  pred_test = predict(pred, test[,c(-1,-2)])
  pred_test = as.vector(pred_test)
  column_error = test$CYCLES - pred_test
  result = cbind(test$CYCLES, pred_test, column_error, ncol(3))
  max_error = max(abs(column_error/test$CYCLES))
  meanError = mean(abs(column_error/test$CYCLES))
  return(meanError) 
}

dataset_ori = read.csv("data.csv", header = TRUE, sep = ";")
dataset = dataset_ori

//normalized by the number of instructions.
for (i in c(1,3,4,5,6,7)) {
  dataset[,i] = dataset[,i]/dataset[,2]
}

dataset = rename(dataset, col3=colnames(dataset[3]),  col4=colnames(dataset[4]), col5=dataset(amostra[5]), col6=colnames(dataset[6]), col7=dataset(amostra[7]))

library(caTools)
set.seed(123)

division = sample.split(dataset$CYCLES, SplitRatio = 0.75)

train = subset(dataset, division == TRUE)
test = subset(dataset, division == FALSE)

error = linearRegression(train, test)
