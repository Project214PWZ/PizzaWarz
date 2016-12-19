#define scriptApplyDamage
global.intHealth = global.intHealth - scriptDamageCalculation;

#define scriptDamageCalculation
intDamage = object_PlayerMovement.speed * 2.5;
return intDamage;
