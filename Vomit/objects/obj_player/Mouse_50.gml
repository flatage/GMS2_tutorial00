/// @description Create the bullet

if alarm[0] <= 0 {

	var dir = point_direction(x, y-sprite_height/2, mouse_x, mouse_y);	//自キャラとマウスの2点間の角度を代入
	var flipped = (mouse_x > x)*2-1;
	var gun_x = x-4*flipped;

	// lengthdir関数は回転のオフセット値を返す便利な関数
	var x_offset = lengthdir_x(20, dir);
	var y_offset = lengthdir_y(20, dir);

	var bullet = instance_create_layer(gun_x+x_offset,y-sprite_height/2+y_offset,"Instances",obj_bullet);
	bullet.direction = dir;
	//↑変数として定義すると、毎回IDが更新されるのでステップ処理でも一度生成された弾の向きが上書きされないということか。
	
	alarm[0] = bullet_cooldown_;
}