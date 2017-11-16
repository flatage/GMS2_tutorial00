// 横方向のヒットチェック
if place_meeting(x + hspeed_, y, obj_solid) {
	// sign関数（引数が+なら1, -なら-1, 0なら0を返す）を使って微調整
	while !place_meeting(x + sign(hspeed_), y, obj_solid) {
		x += sign(hspeed_);	
	}
	hspeed_ = 0; 
}

// x移動
x += hspeed_;

// 縦方向のヒットチェック
if place_meeting(x, y + vspeed_, obj_solid) {
	// sign関数（引数が+なら1, -なら-1, 0なら0を返す）を使って微調整
	while !place_meeting(x, y+sign(vspeed_), obj_solid) {
		y += sign(vspeed_);	
	}
	vspeed_ = 0;
}

// y移動
y += vspeed_;