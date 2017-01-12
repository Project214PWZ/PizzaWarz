#define scriptGenerateMap

num = irandom(9);
for(intBlockCount=1;intBlockCount<=20;intBlockCount++){
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
}

#define scriptPickBlock
numSelectBlock = irandom(99);
if(numSelectBlock >= 0 && numSelectBlock <= 9){
return object_BlockOneSizeOne;
}
else if(numSelectBlock >= 10 && numSelectBlock <= 24 ){
return object_BlockTwoSizeOne;
}
else if(numSelectBlock >= 25 && numSelectBlock <= 34){
return object_BlockThreeSizeOne;
}
else if(numSelectBlock >= 35 && numSelectBlock <= 44){
return object_BlockFourSizeOne;
}
else if(numSelectBlock >= 45 && numSelectBlock <= 49){
    if(!global.bolPlacedHQ){
        return object_BlockHQSizeOne;
        global.bolPlacedHQ = true;
    }
    else{
        return scriptPickBlock();
    }
}
else if(numSelectBlock >= 50 && numSelectBlock <= 59){
return object_BlockFiveSizeTwo;
}
else if(numSelectBlock >= 60 && numSelectBlock <= 74){
return object_BlockSixSizeTwo;
}
else if(numSelectBlock >= 75 && numSelectBlock <= 89){
return object_BlockSevenSizeTwo;
}
else if(numSelectBlock >= 90 && numSelectBlock <= 99){
return object_BlockEightSizeTwo;
}
