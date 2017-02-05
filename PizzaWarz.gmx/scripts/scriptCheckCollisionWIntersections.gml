var bolIntersectionCollision = false;
with(object_Intersection){
    inst = collision_rectangle(x-8,y-8,x+8,y+8,argument[0],true,false);
    if(inst != noone){
        bolIntersectionCollision = true;
    }
}
return bolIntersectionCollision;
