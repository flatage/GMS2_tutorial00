/// @param speed
var speed_ = argument0;		//speed_は配列の変数

// 横方向のヒットチェック
if place_meeting(x + speed_[h], y, obj_solid) {
	// sign関数（引数が+なら1, -なら-1, 0なら0を返す）を使って微調整
	while !place_meeting(x + sign(speed_[h]), y, obj_solid) {
		x += sign(speed_[h]);	
	}
	speed_[@ h] = 0; 
}

// x移動
x += speed_[h];

// 縦方向のヒットチェック
if place_meeting(x, y + speed_[v], obj_solid) {
	// sign関数（引数が+なら1, -なら-1, 0なら0を返す）を使って微調整
	while !place_meeting(x, y+sign(speed_[v]), obj_solid) {
		y += sign(speed_[v]);	
	}
	speed_[@ v] = 0;
}

// y移動
y += speed_[v];