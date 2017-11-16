/// @description Movement State

// Move force
// 自分とプレイヤーの角度を取る
var dir = point_direction(x, y, obj_player.x, obj_player.y);
hspeed_ = lengthdir_x(speed_, dir);
vspeed_ = lengthdir_y(speed_, dir);
move();

// Push force
move_push();
//もし他のエネミーオブジェクトとぶつかっていなければ
if !place_meeting(x,y, obj_enemy){
	hspeed_push_ = lerp(hspeed_push_, 0, 0.1);
	vspeed_push_ = lerp(vspeed_push_, 0, 0.1);
}

// Death
if health_ <= 0 {
	instance_destroy();
}

// プレイヤーとの距離が48以内だったらステートをアタックに。
if distance_to_object(obj_player) < 48 {
	state_ = ATTACK_;
}