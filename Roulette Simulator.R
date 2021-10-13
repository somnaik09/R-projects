profit.arr = c()
maxbet.arr = c()

#-------------------------- Start
for(k in c(1:1000)){
  
  # Starting Value
  A <- 10000
  
  #Balance
  B = c(A)
  profit = 0
 
  # standard bet (Win)
  abet <- 2
  cbet = abet
  

for(j in c(1:250)){

# Placing bet Red with probability p
p = 0.487
i = runif(1, min = 0, max = 1)

# Win bet
if(i <= p){
  A = A + cbet
  cbet = abet
 # maxbet.arr = c(maxbet.arr, cbet)
}else{
  #Lose and double bet
  A = A - cbet
  cbet = 2*cbet
 # maxbet.arr = c(maxbet.arr, cbet)
  
}

B = c(B, A)

}

profit = A - 10000
profit.arr = c(profit.arr, profit)

}



# How many rounds did we bet
trials = length(B) - 1

#Time in hours/ each round 90sec
hr = (90 * trials)/3600
wage1 <- (B[length(B) - 10] - 10000)/hr
wage2 <- (B[length(B)] - 10000)/hr



