/// @description Attack State

// プレイヤーとの距離が離れたらムーブメントに戻す
if distance_to_object(obj_player) >= 48 {
	state_ = MOVEMENT_;
}