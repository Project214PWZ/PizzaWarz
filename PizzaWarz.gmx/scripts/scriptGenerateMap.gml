#define scriptGenerateMap
for(intBlockCount=1;intBlockCount<=100;intBlockCount++){
    if(global.intSizeOneBlocks == 5 && global.intSizeTwoBlocks == 5){
        global.intSizeOneBlocks = 0;
        global.intSizeTwoBlocks = 0;
        global.intYBuildingPlacement = 208;
        global.intXBuildingPlacement += global.intXBuildingPlacementNext;       
    }
    numSelectBlock = irandom(1);
    if(numSelectBlock == 0 && global.intSizeOneBlocks<5){
        random_Block = scriptPickBlockSizeOne();
    }
    else if(numSelectBlock == 1 && global.intSizeTwoBlocks<5){
        random_Block = scriptPickBlockSizeTwo();
    }
    else if(numSelectBlock == 1){
        random_Block = scriptPickBlockSizeOne();
    }
    else if(numSelectBlock == 0){
        random_Block = scriptPickBlockSizeTwo();
    }
    instance_create(global.intXBuildingPlacement, global.intYBuildingPlacement, random_Block);
    global.intYBuildingPlacement += global.intYBuildingPlacementNext;
}
instance_create(global.HQDeliveryCoor[0] + 130, global.HQDeliveryCoor[1], object_PlayerMovement);
scriptLogging();
instance_create(global.HQDeliveryCoor[0] + 130, global.HQDeliveryCoor[1], object_TestPlayerVehicle);

scriptLogging();


#define scriptPickBlockSizeOne
numSelectBlock = irandom(4);
global.intYBuildingPlacementNext = 1098;
if(numSelectBlock == 0){
    if(global.intBlockOneCounter<7){
        global.intBlockOneCounter++;
        global.intSizeOneBlocks++;
        scriptArrayListDeliveryDetinationPoints(global.intXBuildingPlacement+12,global.intYBuildingPlacement+118);
        scriptArrayListDeliveryDetinationPoints(global.intXBuildingPlacement+628,global.intYBuildingPlacement+379);
        scriptArrayListDeliveryDetinationPoints(global.intXBuildingPlacement+136,global.intYBuildingPlacement+880);
        return object_BlockOneSizeOne;}
    else
        return scriptPickBlockSizeOne();
}
else if(numSelectBlock == 1 ){
    if(global.intBlockTwoCounter<14){
        global.intBlockTwoCounter++;
        global.intSizeOneBlocks++;
        scriptArrayListDeliveryDetinationPoints(global.intXBuildingPlacement+12,global.intYBuildingPlacement+148);
        scriptArrayListDeliveryDetinationPoints(global.intXBuildingPlacement+12,global.intYBuildingPlacement+413);
        scriptArrayListDeliveryDetinationPoints(global.intXBuildingPlacement+628,global.intYBuildingPlacement+488);
        scriptArrayListDeliveryDetinationPoints(global.intXBuildingPlacement+12,global.intYBuildingPlacement+678);
        scriptArrayListDeliveryDetinationPoints(global.intXBuildingPlacement+628,global.intYBuildingPlacement+786);
        return object_BlockTwoSizeOne;}
    else
        return scriptPickBlockSizeOne();
}
else if(numSelectBlock == 2){
    if(global.intBlockThreeCounter<19){
        global.intBlockThreeCounter++;
        global.intSizeOneBlocks++;
        scriptArrayListDeliveryDetinationPoints(global.intXBuildingPlacement+12,global.intYBuildingPlacement+241);
        scriptArrayListDeliveryDetinationPoints(global.intXBuildingPlacement+628,global.intYBuildingPlacement+267);
        scriptArrayListDeliveryDetinationPoints(global.intXBuildingPlacement+628,global.intYBuildingPlacement+432);
        scriptArrayListDeliveryDetinationPoints(global.intXBuildingPlacement+12,global.intYBuildingPlacement+530);
        scriptArrayListDeliveryDetinationPoints(global.intXBuildingPlacement+628,global.intYBuildingPlacement+752);
        return object_BlockThreeSizeOne;}
    else
        return scriptPickBlockSizeOne();
}
else if(numSelectBlock == 3){
    if(global.intBlockFourCounter<9){
        global.intBlockFourCounter++;
        global.intSizeOneBlocks++;
        scriptArrayListDeliveryDetinationPoints(global.intXBuildingPlacement+12,global.intYBuildingPlacement+146);
        scriptArrayListDeliveryDetinationPoints(global.intXBuildingPlacement+628,global.intYBuildingPlacement+278);
        scriptArrayListDeliveryDetinationPoints(global.intXBuildingPlacement+12,global.intYBuildingPlacement+717);
        scriptArrayListDeliveryDetinationPoints(global.intXBuildingPlacement+628,global.intYBuildingPlacement+720);
        return object_BlockFourSizeOne;}
    else
        return scriptPickBlockSizeOne();
}
else if(numSelectBlock == 4){
    if(!global.bolPlacedHQ){
        global.bolPlacedHQ = true;
        global.intSizeOneBlocks++;
        global.HQDeliveryCoor[0] = global.intXBuildingPlacement + 606;
        global.HQDeliveryCoor[1] = global.intYBuildingPlacement + 699;
        return object_BlockHQSizeOne;}
    else{
        return scriptPickBlockSizeOne();
    }
}

#define scriptPickBlockSizeTwo
numSelectBlock = irandom(3);
global.intYBuildingPlacementNext = 627;
if(numSelectBlock == 0){
    if(global.intBlockFiveCounter<19){
        global.intBlockFiveCounter++;
        global.intSizeTwoBlocks++;
        scriptArrayListDeliveryDetinationPoints(global.intXBuildingPlacement+319,global.intYBuildingPlacement+409);
        return object_BlockFiveSizeTwo;}
     else
        return scriptPickBlockSizeTwo();
}
else if(numSelectBlock == 1){
    if(global.intBlockSixCounter<10){
        global.intBlockSixCounter++;
        global.intSizeTwoBlocks++;
        scriptArrayListDeliveryDetinationPoints(global.intXBuildingPlacement+297,global.intYBuildingPlacement+12);
        return object_BlockSixSizeTwo;}
     else
        return scriptPickBlockSizeTwo();
}
else if(numSelectBlock == 2){
    if(global.intBlockSevenCounter<14){
        global.intBlockSevenCounter++;
        global.intSizeTwoBlocks++;
        return object_BlockSevenSizeTwo;}
     else
        return scriptPickBlockSizeTwo();
}
else if(numSelectBlock == 3){
    if(global.intBlockEightCounter<7){
        global.intBlockEightCounter++;
        global.intSizeTwoBlocks++;
        scriptArrayListDeliveryDetinationPoints(global.intXBuildingPlacement+165,global.intYBuildingPlacement+409);
        return object_BlockEightSizeTwo;}
     else
        return scriptPickBlockSizeTwo();
}