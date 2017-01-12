#define scriptGenerateMap

num = irandom(9);
for(intBlockCount=1;intBlockCount<=100;intBlockCount++){
    if(num == 1){
        random_block = object_BlockOneSizeOne;
    }
    else if(num == 2){
        random_block = scriptPickBlock();
    }
    else if(num == 3){
        random_block = object_BlockThreeSizeOne;
    }
    else if(num == 4){
        random_block = object_BlockFourSizeOne;
    }
    else if(num == 5){
        random_block = object_BlockHQSizeOne;
    }
    else if(num == 6){
        random_block = object_BlockFiveSizeTwo;
    }
    else if(num == 7){
        random_block = object_BlockSixSizeTwo;
    }
    else if(num == 8){
        random_block = object_BlockSevenSizeTwo;
    }
    else if(num == 9){
        random_block = object_BlockEightSizeTwo;
    }
    
    grid[# xx, yy] = instance_create(208,208,random_block);
    grid[# xx, yy] = instance_create(1052,208,random_block);
    grid[# xx, yy] = instance_create(1896,208,random_block);
    grid[# xx, yy] = instance_create(2740,208,random_block);
    grid[# xx, yy] = instance_create(3584,208,random_block);
    grid[# xx, yy] = instance_create(4428,208,random_block);
    grid[# xx, yy] = instance_create(5272,208,random_block);
    grid[# xx, yy] = instance_create(6116,208,random_block);
    grid[# xx, yy] = instance_create(6960,208,random_block);
    grid[# xx, yy] = instance_create(7804,208,random_block);
}

#define scriptPickBlock
numSelectBlock = irandom(99);
if(numSelectBlock >= 0 && numSelectBlock <= 18){
return object_BlockOneSizeOne;
}
else if(numSelectBlock >= 19 && numSelectBlock <= 32 ){
return object_BlockTwoSizeOne;
}
else if(numSelectBlock >= 33 && numSelectBlock <= 41){
return object_BlockThreeSizeOne;
}
else if(numSelectBlock >= 42 && numSelectBlock <= 48){
return object_BlockFourSizeOne;
}
else if(numSelectBlock >= 49 && numSelectBlock < 50){
    if(!global.bolPlacedHQ){
        return object_BlockHQSizeOne;
        global.bolPlacedHQ = true;
    }
    else{
        return scriptPickBlock();
    }
}
else if(numSelectBlock >= 50 && numSelectBlock <= 68){
return object_BlockFiveSizeTwo;
}
else if(numSelectBlock >= 69 && numSelectBlock <= 82){
return object_BlockSixSizeTwo;
}
else if(numSelectBlock >= 83 && numSelectBlock <= 92){
return object_BlockSevenSizeTwo;
}
else if(numSelectBlock >= 93 && numSelectBlock <= 99){
return object_BlockEightSizeTwo;
}
