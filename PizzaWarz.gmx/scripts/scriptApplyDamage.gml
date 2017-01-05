#define scriptApplyDamage
global.intHealth = global.intHealth - scriptDamageCalculation;

#define scriptDamageCalculation
intDamage = global.intPlayerSpeed * 5;
return intDamage;
