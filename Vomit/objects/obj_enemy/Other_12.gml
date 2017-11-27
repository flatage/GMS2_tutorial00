/// @description Hit State
// Push force
move(speed_push_);
speed_push_[h] = lerp(speed_push_[h], 0, 0.1);
speed_push_[v] = lerp(speed_push_[v], 0, 0.1);

//プッシュのスピードが1未満になったら
if point_distance(0, 0, speed_push_[h], speed_push_[v]) < 1 {
	state_ = MOVEMENT_;
}