#define scriptGenerateMap

num = irandom(9);
if(num == 1){
random_block = object_BlockOneSizeOne;
}
else if(num == 2){
random_block = object_BlockTwoSizeOne;
//xx = random_range(993, 1626);
//yy = random_range(779, 1198);
}
else if(num == 3){
random_block = object_BlockThreeSizeOne;
//xx = random_range(180, 813);
//yy = random_range(779, 1198);
}
grid[# xx, yy] = instance_create(180,180,random_block);
grid[# xx, yy] = instance_create(993,779,random_block);
grid[# xx, yy] = instance_create(180,779,random_block);


#define scriptPickBlock
flag =  true;
num = irandom(99);
if(num >= 0 && num <= 9){
random_block = object_BlockOneSizeOne;
}
else if(num >= 10 && num <= 24 ){
random_block = object_BlockTwoSizeOne;
//xx = random_range(993, 1626);
//yy = random_range(779, 1198);
}
else if(num >= 25 && num <= 34){
random_block = object_BlockThreeSizeOne;
//xx = random_range(180, 813);
//yy = random_range(779, 1198);
}
else if(num >= 35 && num <= 44){
random_block = object_BlockFiveSizeTwo;

}
else if(num >= 45 && num <= 49){
random_block = object_HUD;
flag = false;
}
else if(num >= 50 && num <= 59){
random_block = object_BlockSixSizeTwo;
}
else if(num >= 60 && num <= 74){
random_block = object_BlockSevenSizeTwo;
}
else if(num >= 75 && num <= 89){
//random_block = object_BlockSevenSizeTwo;
}
else if(num >= 90 && num <= 99){
//random_block = object_BlockSevenSizeTwo;
}
grid[# xx, yy] = instance_create(180,180,random_block);
grid[# xx, yy] = instance_create(993,779,random_block);
grid[# xx, yy] = instance_create(180,779,random_block);
