#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
z1=0
z2=0
x2=0
y2=0
tex=0
alarm[0]=1
#define Alarm_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
image_angle=point_direction(x,y,x2,y2)
image_xscale=point_distance(x,y,x2,y2)
image_yscale=-2
#define Step_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=408
applies_to=self
invert=0
arg0=z1<z2
*/
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=422
*/
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/

if obj_play.z >= z1-.1 && obj_play.z < z2{
    solid=true
}else{
solid=false
}
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=424
*/
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=421
*/
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=422
*/
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/

if obj_play.z >= z2-.1 && obj_play.z < z1{
    solid=true
}else{
solid=false
}
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=424
*/
#define Draw_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
d3d_draw_wall(x2,y2,z2,x,y,z1,tex,1,1)
