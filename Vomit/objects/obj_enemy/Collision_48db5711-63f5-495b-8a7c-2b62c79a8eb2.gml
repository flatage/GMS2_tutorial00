/// @description soft collide

// 自分と他のオブジェクトの角度を取る（逆に行く）
var dir = point_direction(other.x, other.y, x,y);	

hspeed_push_ += lengthdir_x(0.1, dir);
vspeed_push_ += lengthdir_y(0.1, dir);
//move_push();