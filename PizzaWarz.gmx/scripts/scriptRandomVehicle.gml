#define scriptRandomVehicle
/*for(intVehicleCount =1;intVehicleCount<=52;intVehicleCount++){
    global.intDirectionSelect = irandom(1);
    if(global.intDirectionSelect == 0 && global.HorizontalCount<8)
    {
        
        global.HorizontalCount += scriptHorizontalVehicle();
        instance_create(global.arrayLoc[0], global.arrayLoc[1],scriptPickRandomVehicle());
    }
    else if(global.intDirectionSelect == 1 && global.VerticalCount<44)
    {
        scriptVerticalVehicle();
    }
    else if(global.intDirectionSelect == 0)
    {
        global.HorizontalCount += scriptHorizontalVehicle();
        instance_create(global.arrayLoc[0], global.arrayLoc[1],scriptPickRandomVehicle());
    }
}
*/
scriptVerticalVehicle();

#define scriptHorizontalVehicle
/*
numRoadSelect = irandom(1);
if(numRoadSelect ==0)
{
 global.carLane = scriptSelectLane("hor");
    if(global.intHorizontalLaneOne<4)
    {
   
        intStartSelect = irandom(9);
        global.intHorizontalLaneOne++;
        global.arrayLoc[0] = round(random_range(global.arrayBlockCoor[intStartSelect,0],global.arrayBlockCoor[intStartSelect,1]));
        global.arrayLoc[1] = global.arrayBlockCoor[intStartSelect,2]-scriptSelectLane("hor");
        
        if !position_meeting(global.arrayLoc[0],global.arrayLoc[1],object_RandomVehicleMovement)
        { 
            return 1;
        }
        else
        {
            show_message("In horizontal lane1");
            return scriptHorizontalVehicle();
        }
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
        if !position_meeting(global.arrayLoc[0],global.arrayLoc[1],object_RandomVehicleMovement)
        { 
            
            return 1;
        }
        else
        {
            show_message("In horizontal lane2");
            return scriptHorizontalVehicle();
        }
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
        if !position_meeting(global.arrayLoc[0],global.arrayLoc[1],object_RandomVehicleMovement)
        { 
            return 1;
        }
        else
        {
            show_message("In horizontal lane3");
            return scriptHorizontalVehicle();
        }
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
        if !position_meeting(global.arrayLoc[0],global.arrayLoc[1],object_RandomVehicleMovement)
        { 
            return 1;
        }
        else
        {
            show_message("In horizontal lane4");
            return scriptHorizontalVehicle();
        }
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
        if !position_meeting(global.arrayLoc[0],global.arrayLoc[1],object_RandomVehicleMovement)
        { 
            return 1;
        }
        else
        {
            show_message("In horizontal lane5");
            return scriptHorizontalVehicle();
        }
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
        if !position_meeting(global.arrayLoc[0],global.arrayLoc[1],object_RandomVehicleMovement)
        { 
            return 1;
        }
        else
        {
            show_message("In horizontal lane6");
            return scriptHorizontalVehicle();
        }
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
        if !position_meeting(global.arrayLoc[0],global.arrayLoc[1],object_RandomVehicleMovement)
        { 
            return 1;
        }
        else
        {
            show_message("In horizontal lane7");
            return scriptHorizontalVehicle();
        }
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
        if !position_meeting(global.arrayLoc[0],global.arrayLoc[1],object_RandomVehicleMovement)
        { 
            return 1;
        }
        else
        {
            show_message("In horizontal lane8");
            return scriptHorizontalVehicle();
        }
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
        if !position_meeting(global.arrayLoc[0],global.arrayLoc[1],object_RandomVehicleMovement)
        { 
            return 1;
        }
        else
        {
            show_message("In horizontal lane9");
            return scriptHorizontalVehicle();
        }
    }
    else
        return scriptHorizontalVehicle();  
} 

else if(numRoadSelect==1)
{
 global.carLane = scriptSelectLane("hor");
    if(global.intHorizontalLaneTen<4)
    {
        intStartSelect = random_range(90,99);
        global.intHorizontalLaneTen++;
        global.arrayLoc[0] = round(random_range(global.arrayBlockCoor[intStartSelect,0],global.arrayBlockCoor[intStartSelect,1]));
        global.arrayLoc[1] = global.arrayBlockCoor[intStartSelect,2]-scriptSelectLane("hor");
        if !position_meeting(global.arrayLoc[0],global.arrayLoc[1],object_RandomVehicleMovement)
        { 
            return 1;
        }
        else
        {
            show_message("In horizontal lane10");
            return scriptHorizontalVehicle();
        }
    }
    else
        return scriptHorizontalVehicle();  
}
*/

#define scriptVerticalVehicle
randomize();
for(intStreet = 0; intStreet<11; intStreet++){
    for(numVehicles = 0; numVehicles<4; numVehicles++){
        global.carLane = scriptSelectLane("ver");
        arrayLoc[0] = global.intStreetChange + global.carLane;
        arrayLoc[1] = irandom(8647);
        if !position_meeting(arrayLoc[0],arrayLoc[1],object_RandomVehicleMovement)
        { 
            instance_create(arrayLoc[0],arrayLoc[1],scriptPickRandomVehicle());
            global.VerticalCount++;
        }
        else
        {
         show_message("In vertical lanes");   
            numVehicles--;
        }

    }
    global.intStreetChange = global.intStreetChange + global.intXBuildingPlacementNext;
}

#define scriptPickRandomVehicle
numSelectVehicle = irandom(1);
if(numSelectVehicle == 0 && global.RandomVehicleSetOne < 70)
{
    return scriptPickRandomVehicle2();
}
else if(numSelectVehicle == 1 && global.RandomVehicleSetTwo < 14)
{
    return scriptPickRandomVehicle3();
}
else if(numSelectVehicle == 1){
    return scriptPickRandomVehicle2();
}
else if(numSelectVehicle == 0){
    return scriptPickRandomVehicle3();
}

#define scriptPickRandomVehicle2
numSelectVehicle = irandom(4);
if(numSelectVehicle ==0)
{
    if(global.intVehicleOneCounter<14)
    {
        global.intVehicleOneCounter++;
        global.RandomVehicleSetOne++;
        return object_RandomVehicleOne;
    }
    else
        return scriptPickRandomVehicle2();
}
else if(numSelectVehicle==1)
{
    if(global.intVehicleTwoCounter<14)
    {
        global.intVehicleTwoCounter++;
        global.RandomVehicleSetOne++;
        return object_RandomVehicleTwo;
    }
    else
        return scriptPickRandomVehicle2();
}
else if(numSelectVehicle==2)
{
    if(global.intVehicleThreeCounter<14)
    {
        global.intVehicleThreeCounter++;
        global.RandomVehicleSetOne++;
        return object_RandomVehicleThree;
    }
    else
        return scriptPickRandomVehicle2();
}
else if(numSelectVehicle==3)
{
    if(global.intVehicleFourCounter<14)
    {
        global.intVehicleFourCounter++;
        global.RandomVehicleSetOne++;
        return object_RandomVehicleFour;
    }
    else
        return scriptPickRandomVehicle2();
}
else if(numSelectVehicle==4)
{
    if(global.intVehicleFiveCounter<14)
    {
        global.intVehicleFiveCounter++;
        global.RandomVehicleSetOne++;
        return object_RandomVehicleFive;
    }
    else
        return scriptPickRandomVehicle2();
}

#define scriptPickRandomVehicle3
numSelectVehicle = irandom(4);
if(numSelectVehicle==0)
{
    if(global.intVehicleSixCounter<6)
    {
        global.intVehicleSixCounter++;
        global.RandomVehicleSetTwo++;
        return object_Reema;
    }
    else
        return scriptPickRandomVehicle3();
}
else if(numSelectVehicle==1)
{
    if(global.intVehicleSevenCounter<2)
    {
        global.intVehicleSevenCounter++;
        global.RandomVehicleSetTwo++;
        return object_Amanda;
    }
    else
        return scriptPickRandomVehicle3();
}
else if(numSelectVehicle==2)
{
    if(global.intVehicleEightCounter<2)
    {
        global.intVehicleEightCounter++;
        global.RandomVehicleSetTwo++;
        return object_James;
    }
    else
        return scriptPickRandomVehicle3();
}    
else if(numSelectVehicle==3)
{
    if(global.intVehicleNineCounter<2)
    {
        global.intVehicleNineCounter++;
        global.RandomVehicleSetTwo++;
        return object_KevinOne;
    }
    else
        return scriptPickRandomVehicle3();
} 
else if(numSelectVehicle==4)
{
    if(global.intVehicleTenCounter<2)
    {
        global.intVehicleTenCounter++;
        global.RandomVehicleSetTwo++;
        return object_KevinTwo;
    }
    else
        return scriptPickRandomVehicle3();
}

#define scriptSelectLane
intLane = irandom(3)
if(intLane == 0)
{
    if(argument[0]=="hor"){
        global.randomImageDirection = 270;
    }
    else if(argument[0]=="ver"){
        global.randomImageDirection = 180;
    }
return 26;
}
else if(intLane ==1)
{
    if(argument[0]=="hor"){
        global.randomImageDirection = 270;
    }
    else if(argument[0]=="ver"){
        global.randomImageDirection = 180;
    }
return 78;
}else if(intLane ==2)
{
    if(argument[0]=="hor"){
        global.randomImageDirection = 90;
    }
    else if(argument[0]=="ver"){
        global.randomImageDirection = 0;
    }
return 130;
}
else if(intLane ==3){
    if(argument[0]=="hor"){
        global.randomImageDirection = 90
    }
    else if(argument[0]=="ver"){
        global.randomImageDirection = 0;
    }
return 182;
}