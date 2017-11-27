/// @description Initialize the enemy
speed_ = [0,0];	//配列化
speed_push_ = [0, 0];
max_speed_ = 1;
health_ = 4;

// bullet cooldown
bullet_cooldown_ = room_speed / 2;
alarm[0] = bullet_cooldown_;

// states
MOVEMENT_ = 0;
ATTACK_ = 1;
HIT_ = 2;

state_ = MOVEMENT_;