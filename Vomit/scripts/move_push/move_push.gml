// 横方向のヒットチェック
if place_meeting(x + hspeed_push_, y, obj_solid) {
	// sign関数（引数が+なら1, -なら-1, 0なら0を返す）を使って微調整
	while !place_meeting(x + sign(hspeed_push_), y, obj_solid) {
		x += sign(hspeed_push_);	
	}
	hspeed_push_ = 0; 
}

// x移動
x += hspeed_push_;

// 縦方向のヒットチェック
if place_meeting(x, y + vspeed_push_, obj_solid) {
	// sign関数（引数が+なら1, -なら-1, 0なら0を返す）を使って微調整
	while !place_meeting(x, y+sign(vspeed_push_), obj_solid) {
		y += sign(vspeed_push_);	
	}
	vspeed_push_ = 0;
}

// y移動
y += vspeed_push_;