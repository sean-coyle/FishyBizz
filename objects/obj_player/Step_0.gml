/// @description Insert description here
// You can write your code in this editor
var xRight = keyboard_check(ord("D")) or keyboard_check(vk_right);
var xleft = keyboard_check(ord("A")) or keyboard_check(vk_left);
var yUp =  keyboard_check(ord("W")) or keyboard_check(vk_up);
var yDown = keyboard_check(ord("S")) or keyboard_check(vk_down);

if xRight { x+= player_speed; }
if xleft { x-= player_speed; }
if yUp { y-= player_speed; }
if yDown { y+= player_speed; }
	

if self.health <= 0 {
	instance_destroy(self);
}