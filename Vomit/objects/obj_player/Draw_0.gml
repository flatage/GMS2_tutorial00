/// @description Draw the Player and the Gun
var dir = point_direction(x, y-sprite_height/2, mouse_x, mouse_y);	//自キャラとマウスの2点間の角度を代入
var flipped = (mouse_x > x)*2-1;

/*if mouse_x < x {
	xscale = -1;
}*/

//Draw the Player
draw_sprite_ext(spr_player, 0, x, y, x_scale_ * flipped, y_scale_, 0, image_blend, image_alpha);		//subimg == スプライトアニメの番号

// Draw the Gun
draw_sprite_ext(spr_gun, 0, x-4*flipped, y-sprite_height/2, 1, 1, dir, image_blend, image_alpha);		//subimg == スプライトアニメの番号