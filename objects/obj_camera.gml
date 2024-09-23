#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
d3d_start()
d3d_set_zwriteenable(true)
d3d_set_culling(false)

z=0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=105
relative=0
applies_to=self
invert=0
arg0=0
arg1=0
arg2=0
*/
#define Keyboard_65
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
direction+=2
#define Keyboard_68
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
direction-=2
#define Keyboard_69
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
z+=1
#define Keyboard_81
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
z-=1
#define Keyboard_83
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
x-=cos(degtorad(direction))
y+=sin(degtorad(direction))
#define Keyboard_87
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
x+=cos(degtorad(direction))
y-=sin(degtorad(direction))
#define Draw_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/

d3d_set_projection(x,y,z,x+cos(degtorad(direction)),y-sin(degtorad(direction)),z,0,0,1)
#define KeyPress_112
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=222
invert=0
arg0=21
*/
