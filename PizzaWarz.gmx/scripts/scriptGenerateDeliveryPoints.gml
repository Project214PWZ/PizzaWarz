#define scriptGenerateDeliveryPoints
global.intPizzasToDeliver = irandom(3);
arraySet[0] = 0;
for(n=0;n<=global.intPizzasToDeliver;n++){
    scriptRecursivePoints(n,arraySet);
}

#define scriptRecursivePoints
intDeliveryPoints = irandom(array_height_2d(global.arrayDeliveryPoints));
arraySet = argument[1];
for(m=0;m<array_length_1d(arraySet);m++){
    if(arraySet[m] == intDeliveryPoints){
        scriptRecursivePoints(argument[0],arraySet);
        m=array_length_1d(arraySet);
    }
    else{
        arraySet[argument[0]]=intDeliveryPoints;
        instance_create(global.arrayDeliveryPoints[intDeliveryPoints,0], global.arrayDeliveryPoints[intDeliveryPoints,1], object_DeliveryDestinationMarker);
        m=array_length_1d(arraySet);
    }
}