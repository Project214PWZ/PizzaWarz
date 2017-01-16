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
    //grid[# xx,yy] = instance_create(global.XBuildingPlacement, global.YBuildingPlacement, random_block);
    //message = "For block " + intBlockCount + ": Xcoor " + global.intXBuildingPlacement + ", Ycoor " + global.intYBuildingPlacement;
    //message = global.intXBuildingPlacement & ":" & global.intYBuildingPlacement;
    //show_message(global.intXBuildingPlacement);
    //show_message(global.intYBuildingPlacement);
    instance_create(global.intXBuildingPlacement, global.intYBuildingPlacement, random_Block);
    global.intYBuildingPlacement += global.intYBuildingPlacementNext;
    //switch (intBlockCount){
    //    case 10:
    //    case 20:
    //    case 30:
    //    case 40:
    //    case 50:
    //    case 60:
    //    case 70:
    //    case 80:
    //    case 90:
    //        global.intXBuildingPlacement += global.intXBuildingPlacementNext;              
    //        break;
    //}
}



#define scriptPickBlockSizeOne
numSelectBlock = irandom(4);
global.intYBuildingPlacementNext = 1098;
if(numSelectBlock == 0){
    if(global.intBlockOneCounter<7){
        global.intBlockOneCounter++;
        global.intSizeOneBlocks++;
        scriptArrayListDeliveryDetinationPoints(32,118);
        scriptArrayListDeliveryDetinationPoints(608,379);
        scriptArrayListDeliveryDetinationPoints(136,860);
        return object_BlockOneSizeOne;}
    else
        return scriptPickBlockSizeOne();
}
else if(numSelectBlock == 1 ){
    if(global.intBlockTwoCounter<14){
        global.intBlockTwoCounter++;
        global.intSizeOneBlocks++;
        scriptArrayListDeliveryDetinationPoints(27,148);
        scriptArrayListDeliveryDetinationPoints(27,413);
        scriptArrayListDeliveryDetinationPoints(607,488);
        scriptArrayListDeliveryDetinationPoints(27,678);
        scriptArrayListDeliveryDetinationPoints(607,786);
        return object_BlockTwoSizeOne;}
    else
        return scriptPickBlockSizeOne();
}
else if(numSelectBlock == 2){
    if(global.intBlockThreeCounter<19){
        global.intBlockThreeCounter++;
        global.intSizeOneBlocks++;
        scriptArrayListDeliveryDetinationPoints(38,241);
        scriptArrayListDeliveryDetinationPoints(605,267);
        scriptArrayListDeliveryDetinationPoints(605,432);
        scriptArrayListDeliveryDetinationPoints(38,530);
        scriptArrayListDeliveryDetinationPoints(605,752);
        return object_BlockThreeSizeOne;}
    else
        return scriptPickBlockSizeOne();
}
else if(numSelectBlock == 3){
    if(global.intBlockFourCounter<9){
        global.intBlockFourCounter++;
        global.intSizeOneBlocks++;
        scriptArrayListDeliveryDetinationPoints(28,146);
        scriptArrayListDeliveryDetinationPoints(612,278);
        scriptArrayListDeliveryDetinationPoints(28,717);
        scriptArrayListDeliveryDetinationPoints(612,720);
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
global.intYBuildingPlacementNext = 627;
if(numSelectBlock == 0){
    if(global.intBlockFiveCounter<19){
        global.intBlockFiveCounter++;
        global.intSizeTwoBlocks++;
        scriptArrayListDeliveryDetinationPoints(319,386);
        return object_BlockFiveSizeTwo;}
     else
        return scriptPickBlockSizeTwo();
}
else if(numSelectBlock == 1){
    if(global.intBlockSixCounter<10){
        global.intBlockSixCounter++;
        global.intSizeTwoBlocks++;
        scriptArrayListDeliveryDetinationPoints(297,30);
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
        scriptArrayListDeliveryDetinationPoints(165,384);
        return object_BlockEightSizeTwo;}
     else
        return scriptPickBlockSizeTwo();
}
