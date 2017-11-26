/// @description Hit State
// Push force
move(hspeed_push, vspeed_push);
hspeed_push_ = lerp(hspeed_push_, 0, 0.1);
vspeed_push_ = lerp(vspeed_push_, 0, 0.1);

//プッシュのスピードが1未満になったら
if point_distance(0, 0, hspeed_push_, vspeed_push_) < 1 {
	state_ = MOVEMENT_;
}