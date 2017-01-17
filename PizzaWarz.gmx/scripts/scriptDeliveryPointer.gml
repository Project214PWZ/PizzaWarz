var ex = instance_nearest(object_TestPlayerVehicle.x, object_TestPlayerVehicle.y, object_DeliveryDestinationMarker).x;
var ey = instance_nearest(object_TestPlayerVehicle.x, object_TestPlayerVehicle.y, object_DeliveryDestinationMarker).y;

var yy = object_TestPlayerVehicle.y;
var xx = object_TestPlayerVehicle.x;


draw_sprite_ext(sprite_DeliveryDirection,0,25,25,1,1,point_direction(xx,yy,ex,ey),c_white,1);
