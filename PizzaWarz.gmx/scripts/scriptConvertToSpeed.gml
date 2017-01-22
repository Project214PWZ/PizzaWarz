#define scriptConvertToSpeed
//argument 0 will be VSpeed
if(argument[0] != 0){
    if(argument[0] > 0){
        global.intSpeed = argument[0];
    }
    else if(argument[0] < 0){
        global.intSpeed = argument[0] * (-1);
    }
}
//argument 1 will be HSpeed
else if(argument[1] != 0){
    if(argument[1] > 0){
        global.intSpeed = argument[1];
    }
    else if(argument[1] < 0){
        global.intSpeed = argument[1] * (-1);
    }
}

#define scriptConvertFromSpeed
//Thinking
