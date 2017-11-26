/// @description Attack State


if instance_exists(obj_player){
	
	// プレイヤーとの距離が離れたらムーブメントに戻す
	if distance_to_object(obj_player) >= 48 {
		state_ = MOVEMENT_;
	}

	// 弾を生成
	if alarm[0] <= 0 {
		var dir = point_direction(x, y, obj_player.x, obj_player.y-obj_player.sprite_height/2);	//自分とプレイヤーキャラの角度を見る

		// lengthdir関数は回転のオフセット値を返す便利な関数
		var x_offset = lengthdir_x(20, dir);
		var y_offset = lengthdir_y(20, dir);

		var bullet = instance_create_layer(x+x_offset,y+y_offset,"Instances",obj_enemy_bullet);
		bullet.direction = dir;
		//↑変数として定義すると、毎回IDが更新されるのでステップ処理でも一度生成された弾の向きが上書きされないということか。
	
		alarm[0] = bullet_cooldown_;
	}

}