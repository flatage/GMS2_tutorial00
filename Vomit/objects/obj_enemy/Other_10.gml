/// @description Movement State

// Move force

if instance_exists(obj_player) {
	// 自分とプレイヤーの角度を取る
	var dir = point_direction(x, y, obj_player.x, obj_player.y);
	speed_[h] = lengthdir_x(max_speed_, dir);
	speed_[v] = lengthdir_y(max_speed_, dir);
	move(speed_);

	// Push force
	move(speed_push_);
	//もし他のエネミーオブジェクトとぶつかっていなければ
	if !place_meeting(x,y, obj_enemy){
		speed_push_[h] = lerp(speed_push_[h], 0, 0.1);
		speed_push_[v] = lerp(speed_push_[v], 0, 0.1);
	}

	// Death
	if health_ <= 0 {
		instance_destroy();
	}

	// プレイヤーとの距離が48以内だったらステートをアタックに。
	if distance_to_object(obj_player) < 48 {
		state_ = ATTACK_;
	}
}