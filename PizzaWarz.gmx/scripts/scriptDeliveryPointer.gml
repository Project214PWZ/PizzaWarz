var yy = global.objUseForMovement.y;
var xx = global.objUseForMovement.x;

var ex = instance_nearest(xx, yy, object_DeliveryDestinationMarker).x;
var ey = instance_nearest(xx, yy, object_DeliveryDestinationMarker).y;

draw_sprite_ext(sprite_DeliveryDirection,0,25,25,1,1,point_direction(xx,yy,ex,ey),c_white,1);
