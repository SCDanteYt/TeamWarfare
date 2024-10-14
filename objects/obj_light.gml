#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
z=0
//d3d_set_lighting(true)
d3d_light_define_ambient(c_black)
lightid=instance_number(obj_light)
d3d_light_define_point(lightid,x,y,z,100,c_white)
d3d_light_enable(lightid,true)
#define Step_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
#define Keyboard_98
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=102
relative=0
applies_to=self
invert=0
arg0=0
arg1=.5
*/
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=108
relative=0
applies_to=self
invert=0
arg0=.05
*/
#define Keyboard_100
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=102
relative=0
applies_to=self
invert=0
arg0=90
arg1=-.5
*/
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=108
relative=0
applies_to=self
invert=0
arg0=.05
*/
#define Keyboard_102
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=102
relative=0
applies_to=self
invert=0
arg0=90
arg1=.5
*/
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=108
relative=0
applies_to=self
invert=0
arg0=.05
*/
#define Keyboard_104
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=102
relative=0
applies_to=self
invert=0
arg0=0
arg1=-.5
*/
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=108
relative=0
applies_to=self
invert=0
arg0=.05
*/
#define Draw_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/


d3d_draw_wall(x-cos(degtorad(obj_camera.direction+90)),y+sin(degtorad(obj_camera.direction+90)),z+1,x+cos(degtorad(obj_camera.direction+90)),y-sin(degtorad(obj_camera.direction+90)),z-1,sprite_get_texture(spr_lampara,0),1,1)
