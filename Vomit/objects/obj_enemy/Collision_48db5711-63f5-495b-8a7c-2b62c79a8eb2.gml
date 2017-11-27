/// @description soft collide

// 自分と他のオブジェクトの角度を取る（逆に行く）
var dir = point_direction(other.x, other.y, x,y);	

speed_push_[h] += lengthdir_x(0.1, dir);
speed_push_[v] += lengthdir_y(0.1, dir);
//move_push();