MyVarHistEq <- function(port=port, wei=e.weight, comp.days=1, size.days=251,
  conf=0.95){
  if(nrow(port)-size.days<comp.days)
    stop("Not enough data. Try lowering comp.days or size.days")
  val <- port %*% wei
  hvar <- c(rep(0,comp.days))
  for(i in 1:comp.days){
    a <- 1+i; b <- size.days+i
    data <- val[a:b,]
    hvar[i] <- quantile(data,1-conf)
    }
  hfail <- sum((val[0:comp.days]<0)&(val[0:comp.days]<hvar))/length(hvar)
  return(list(VaR=hvar, Fail=hfail))
}
