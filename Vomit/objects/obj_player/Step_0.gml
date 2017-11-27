/// @description Player Movement

//ライフが0になったら自分を消す
if health_ <= 0 {
	instance_destroy();
}

var hinput = keyboard_check(vk_right) - keyboard_check(vk_left);

//平行移動チェック
if hinput != 0 {
	speed_[h] += hinput * acceleration_;
	speed_[h] = clamp(speed_[h], -max_speed_, max_speed_);
} else {
	speed_[h] = lerp(speed_[h], 0, friction_);
}

// 垂直方向チェック
if !place_meeting(x, y+1, obj_solid) {
	speed_[v] += gravity_;
} else {
	if keyboard_check_pressed(vk_up) {
		speed_[v] += jump_height_;
		x_scale_ = image_xscale* 0.8;
		y_scale_ = image_yscale* 1.4;
	}
}


move(speed_);

// Check for landing
if place_meeting(x, y+1, obj_solid) && !place_meeting(x, yprevious+1, obj_solid){	//オブジェクトに接触した && 直前のフレームで接触していなかった（=着地時のみ通る）
	x_scale_ = image_xscale*1.4;
	y_scale_ = image_yscale*0.8;
}


// Move back to normal scale
x_scale_ = lerp(x_scale_, image_xscale, .1);
y_scale_ = lerp(y_scale_, image_yscale, .1);
