/// @param hspeed
/// @param vspeed
var hspd = argument0;
var vspd = argument1;

// 横方向のヒットチェック
if place_meeting(x + hspd, y, obj_solid) {
	// sign関数（引数が+なら1, -なら-1, 0なら0を返す）を使って微調整
	while !place_meeting(x + sign(hspd), y, obj_solid) {
		x += sign(hspd);	
	}
	hspd = 0; 
}

// x移動
x += hspd;

// 縦方向のヒットチェック
if place_meeting(x, y + vspd, obj_solid) {
	// sign関数（引数が+なら1, -なら-1, 0なら0を返す）を使って微調整
	while !place_meeting(x, y+sign(vspd), obj_solid) {
		y += sign(vspd);	
	}
	vspd = 0;
}

// y移動
y += vspd;