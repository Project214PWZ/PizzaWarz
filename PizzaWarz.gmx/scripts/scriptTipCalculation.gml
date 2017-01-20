var intSingleDollars=0;
var intFactor=0;
if(global.intPizzaTimer!=0){
    intSingleDollars = global.intPizzaTimer * 1.5;
}
global.intTipEarned = floor(intSingleDollars);
return global.intTipEarned;;
