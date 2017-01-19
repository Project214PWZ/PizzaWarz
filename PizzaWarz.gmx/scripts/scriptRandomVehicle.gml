#define scriptRandomVehicle
for(intVehicleCount =1;intVehicleCount<=84;intVehicleCount++){
    global.intDirectionSelect = irandom(1);
    if(global.intDirectionSelect == 0 && global.HorizontalCount<40)
    {
        //show_message(global.arrayLoc[0]);
        //show_message(global.arrayLoc[1]);
        instance_create(global.arrayLoc[0], global.arrayLoc[1],scriptPickRandomVehicle());
        global.HorizontalCount += scriptHorizontalVehicle();
    }
    else if(global.intDirectionSelect == 1 && global.VerticalCount<44)
    {
        scriptVerticalVehicle();
    }
    else if(global.intDirectionSelect == 0)
    {
        instance_create(global.arrayLoc[0], global.arrayLoc[1],scriptPickRandomVehicle());
        global.HorizontalCount += scriptHorizontalVehicle();
    }
//    else if(global.intDirectionSelect == 1)
//    {
//        scriptVerticalVehicle();
//    }
}

#define scriptHorizontalVehicle
numRoadSelect = irandom(10);
if(numRoadSelect ==0)
{
    if(global.intHorizontalLaneOne<4)
    {
        intStartSelect = irandom(9);
        global.intHorizontalLaneOne++;
        global.arrayLoc[0] = round(random_range(global.arrayBlockCoor[intStartSelect,0],global.arrayBlockCoor[intStartSelect,1]));
        global.arrayLoc[1] = global.arrayBlockCoor[intStartSelect,2]-scriptSelectLane("hor");
        return 1;
    }
    else
        return scriptHorizontalVehicle();
}
else if(numRoadSelect==1)
{
    if(global.intHorizontalLaneTwo<4)
    {
        intStartSelect = random_range(10,19);
        global.intHorizontalLaneTwo++;
        global.arrayLoc[0] = round(random_range(global.arrayBlockCoor[intStartSelect,0],global.arrayBlockCoor[intStartSelect,1]));
        global.arrayLoc[1] = global.arrayBlockCoor[intStartSelect,2]-scriptSelectLane("hor");
        return 1;
    }
    else
        return scriptHorizontalVehicle();  
}
else if(numRoadSelect==2)
{
    if(global.intHorizontalLaneThree<4)
    {
        intStartSelect = random_range(20,29);
        global.intHorizontalLaneThree++;
        global.arrayLoc[0] = round(random_range(global.arrayBlockCoor[intStartSelect,0],global.arrayBlockCoor[intStartSelect,1]));
        global.arrayLoc[1] = global.arrayBlockCoor[intStartSelect,2]-scriptSelectLane("hor");
        return 1;
    }
    else
        return scriptHorizontalVehicle();  
}
else if(numRoadSelect==3)
{
    if(global.intHorizontalLaneFour<4)
    {
        intStartSelect = random_range(30,39);
        global.intHorizontalLaneFour++;
        global.arrayLoc[0] = round(random_range(global.arrayBlockCoor[intStartSelect,0],global.arrayBlockCoor[intStartSelect,1]));
        global.arrayLoc[1] = global.arrayBlockCoor[intStartSelect,2]-scriptSelectLane("hor");
        return 1;
    }
    else
        return scriptHorizontalVehicle();  
}
else if(numRoadSelect==4)
{
    if(global.intHorizontalLaneFive<4)
    {
        intStartSelect = random_range(40,49);
        global.intHorizontalLaneFive++;
        global.arrayLoc[0] = round(random_range(global.arrayBlockCoor[intStartSelect,0],global.arrayBlockCoor[intStartSelect,1]));
        global.arrayLoc[1] = global.arrayBlockCoor[intStartSelect,2]-scriptSelectLane("hor");
        return 1;
    }
    else
        return scriptHorizontalVehicle();  
}
else if(numRoadSelect==5)
{
    if(global.intHorizontalLaneSix<4)
    {
        intStartSelect = random_range(50,59);
        global.intHorizontalLaneSix++;
        global.arrayLoc[0] = round(random_range(global.arrayBlockCoor[intStartSelect,0],global.arrayBlockCoor[intStartSelect,1]));
        global.arrayLoc[1] = global.arrayBlockCoor[intStartSelect,2]-scriptSelectLane("hor");
        return 1;
    }
    else
        return scriptHorizontalVehicle();  
}
else if(numRoadSelect==6)
{
    if(global.intHorizontalLaneSeven<4)
    {
        intStartSelect = random_range(60,69);
        global.intHorizontalLaneSeven++;
        global.arrayLoc[0] = round(random_range(global.arrayBlockCoor[intStartSelect,0],global.arrayBlockCoor[intStartSelect,1]));
        global.arrayLoc[1] = global.arrayBlockCoor[intStartSelect,2]-scriptSelectLane("hor");
        return 1;
    }
    else
        return scriptHorizontalVehicle();  
}
else if(numRoadSelect==7)
{
    if(global.intHorizontalLaneEight<4)
    {
        intStartSelect = random_range(70,79);
        global.intHorizontalLaneEight++;
        global.arrayLoc[0] = round(random_range(global.arrayBlockCoor[intStartSelect,0],global.arrayBlockCoor[intStartSelect,1]));
        global.arrayLoc[1] = global.arrayBlockCoor[intStartSelect,2]-scriptSelectLane("hor");
        return 1;
    }
    else
        return scriptHorizontalVehicle();  
}    
else if(numRoadSelect==8)
{
    if(global.intHorizontalLaneNine<4)
    {
        intStartSelect = random_range(80,89);
        global.intHorizontalLaneNine++;
        global.arrayLoc[0] = round(random_range(global.arrayBlockCoor[intStartSelect,0],global.arrayBlockCoor[intStartSelect,1]));
        global.arrayLoc[1] = global.arrayBlockCoor[intStartSelect,2]-scriptSelectLane("hor");
        return 1;
    }
    else
        return scriptHorizontalVehicle();  
} 
else if(numRoadSelect==9)
{
    if(global.intHorizontalLaneTen<4)
    {
        intStartSelect = random_range(90,99);
        global.intHorizontalLaneTen++;
        global.arrayLoc[0] = round(random_range(global.arrayBlockCoor[intStartSelect,0],global.arrayBlockCoor[intStartSelect,1]));
        global.arrayLoc[1] = global.arrayBlockCoor[intStartSelect,2]-scriptSelectLane("hor");
        return 1;
    }
    else
        return scriptHorizontalVehicle();  
}

#define scriptVerticalVehicle
for(intStreet = 0; intStreet<11; intStreet++){
    for(numVehicles = 0; numVehicles<4; numVehicles++){
        arrayLoc[0] = global.intStreetChange + scriptSelectLane("ver");
        arrayLoc[1] = irandom(8647);
        instance_create(arrayLoc[0],arrayLoc[1],scriptPickRandomVehicle());
        global.VerticalCount++;
    }
    global.intStreetChange = global.intStreetChange + global.intXBuildingPlacementNext;
}

#define scriptPickRandomVehicle
numSelectVehicle = irandom(9);
if(numSelectVehicle ==0)
{
    if(global.intVehicleOneCounter<14)
    {
        global.intVehicleOneCounter++;
        return object_RandomVehicleOne;
    }
    else
        return scriptPickRandomVehicle();
}
else if(numSelectVehicle==1)
{
    if(global.intVehicleTwoCounter<14)
    {
        global.intVehicleTwoCounter++;
        return object_RandomVehicleTwo;
    }
    else
        return scriptPickRandomVehicle();
}
else if(numSelectVehicle==2)
{
    if(global.intVehicleThreeCounter<14)
    {
        global.intVehicleThreeCounter++;
        return object_RandomVehicleThree;
    }
    else
        return scriptPickRandomVehicle();
}
else if(numSelectVehicle==3)
{
    if(global.intVehicleFourCounter<14)
    {
        global.intVehicleFourCounter++;
        return object_RandomVehicleFour;
    }
    else
        return scriptPickRandomVehicle();
}
else if(numSelectVehicle==4)
{
    if(global.intVehicleFiveCounter<14)
    {
        global.intVehicleFiveCounter++;
        return object_RandomVehicleFive;
    }
    else
        return scriptPickRandomVehicle();
}
else if(numSelectVehicle==5)
{
    if(global.intVehicleSixCounter<6)
    {
        global.intVehicleSixCounter++;
        return object_Reema;
    }
    else
        return scriptPickRandomVehicle();
}
else if(numSelectVehicle==6)
{
    if(global.intVehicleSevenCounter<3)
    {
        global.intVehicleSevenCounter++;
        return object_Amanda;
    }
    else
        return scriptPickRandomVehicle();
}
else if(numSelectVehicle==7)
{
    if(global.intVehicleEightCounter<3)
    {
        global.intVehicleEightCounter++;
        return object_James;
    }
    else
        return scriptPickRandomVehicle();
}    
else if(numSelectVehicle==8)
{
    if(global.intVehicleNineCounter<3)
    {
        global.intVehicleNineCounter++;
        return object_KevinOne;
    }
    else
        return scriptPickRandomVehicle();
} 
else if(numSelectVehicle==9)
{
    if(global.intVehicleTenCounter<3)
    {
        global.intVehicleTenCounter++;
        return object_KevinTwo;
    }
    else
        return scriptPickRandomVehicle();
}

#define scriptSelectLane
intLane = irandom(3)
if(intLane == 0)
{
    if(argument[0]=="hor"){
        global.randomImageDirection = 180;
    }
    else if(argument[0]=="ver"){
        global.randomImageDirection = 270;
    }
return 26;
}
else if(intLane ==1)
{
    if(argument[0]=="hor"){
        global.randomImageDirection = 180;
     }
    else if(argument[0]=="ver"){
        global.randomImageDirection = 270;
    }
return 78;
}else if(intLane ==2)
{
    if(argument[0]=="hor"){
        global.randomImageDirection = 0;
    }
    else if(argument[0]=="ver"){
        global.randomImageDirection = 90;
    }
return 130;
}
else if(intLane ==3){
    if(argument[0]=="hor"){
        global.randomImageDirection = 0;
    }
    else if(argument[0]=="ver"){
        global.randomImageDirection = 90;
    }
return 182;
}