var ex = instance_nearest(object_TestPlayerVehicle.x, object_TestPlayerVehicle.y, object_Pizza).x;
var ey = instance_nearest(object_TestPlayerVehicle.x, object_TestPlayerVehicle.y, object_Pizza).y;

var yy = object_TestPlayerVehicle.y;
var xx = object_TestPlayerVehicle.x;

draw_sprite_ext(sprite_DeliveryDirection,0,0,0,1,1,point_direction(xx,yy,ex,ey),alpha,1);
