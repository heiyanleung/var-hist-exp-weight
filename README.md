# var-hist-exp-weight
Value at Risk: historical exponentially weighted

For historical VaR, we need to specify our portfolio return data frame as well as
the number of days we want to calculate and use for the final percentile (which
will become our VaR). For example, in our exercise we type the following:

MyVarHistEq(port=port,wei=e.weight,comp.days=1,size.days=251,conf=0.95)
