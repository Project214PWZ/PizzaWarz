#define scriptGenerateMap
for(intBlockCount=1;intBlockCount<=100;intBlockCount++){
    numSelectBlock = irandom(1);
    if(numSelectBlock == 0){
        random_block = scriptPickBlockSizeOne();
    }
    else if(numSelectBlock == 1){
        random_block = scriptPickBlockSizeTwo();
    }
    grid[# xx, yy] = instance_create(global.XBuildingPlacement,global.YBuildingPlacement,random_block);    
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


#define scriptPickBlockSizeOne
numSelectBlock = irandom(4);
if(numSelectBlock == 0){
    if(global.intBlockOneCounter<19){
        global.intBlockOneCounter++;
        global.intSizeOneBlocks++;
        return object_BlockOneSizeOne;}
    else
        return scriptPickBlockSizeOne();
}
else if(numSelectBlock == 1 ){
    if(global.intBlockTwoCounter<14){
        global.intBlockTwoCounter++;
        global.intSizeOneBlocks++;
        return object_BlockTwoSizeOne;}
    else
        return scriptPickBlockSizeOne();
}
else if(numSelectBlock == 2){
    if(global.intBlockThreeCounter<9){
        global.intBlockThreeCounter++;
        global.intSizeOneBlocks++;
        return object_BlockThreeSizeOne;}
    else
        return scriptPickBlockSizeOne();
}
else if(numSelectBlock == 3){
    if(global.intBlockFourCounter<7){
        global.intBlockFourCounter++;
        global.intSizeOneBlocks++;
        return object_BlockFourSizeOne;}
    else
        return scriptPickBlockSizeOne();
}
else if(numSelectBlock == 4){
    if(!global.bolPlacedHQ){
        global.bolPlacedHQ = true;
        global.intSizeOneBlocks++;
        return object_BlockHQSizeOne;}
    else{
        return scriptPickBlockSizeOne();
    }
}

#define scriptPickBlockSizeTwo
numSelectBlock = irandom(3);
if(numSelectBlock == 0){
    if(global.intBlockFiveCounter<19){
        global.intBlockFiveCounter++;
        global.intSizeTwoBlocks++;
        return object_BlockFiveSizeTwo;}
     else
        return scriptPickBlockSizeTwo();
}
else if(numSelectBlock == 1){
    if(global.intBlockSixCounter<19){
        global.intBlockSixCounter++;
        global.intSizeTwoBlocks++;
        return object_BlockSixSizeTwo;}
     else
        return scriptPickBlockSizeTwo();
}
else if(numSelectBlock == 2){
    if(global.intBlockSevenCounter<19){
        global.intBlockSevenCounter++;
        global.intSizeTwoBlocks++;
        return object_BlockSevenSizeTwo;}
     else
        return scriptPickBlockSizeTwo();
}
else if(numSelectBlock == 3){
    if(global.intBlockEightCounter<19){
        global.intBlockEightCounter++;
        global.intSizeTwoBlocks++;
        return object_BlockEightSizeTwo;}
     else
        return scriptPickBlockSizeTwo();
}
