#define Create_0
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
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
mv=0
random_set_seed(0134987)
d3d_start()
d3d_set_culling(false)
d3d_set_zwriteenable(true)
col=0
d3d_set_shading(false)
//d3d_set_lighting(true)
ofx=window_get_x() + window_get_width()/2
ofy=window_get_y() + window_get_height()/2
sp=0
z=5
sidexsp=0
sideysp=0
sidesp=0
sidedir=0
xsp=0
ysp=0
zsp=0
zdirt=0
zdir=4.75
prevx=0
prevy=0
movx=0
movy=0
aux=0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=801
invert=0
arg0=
arg1=0
*/
#define Step_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
/*
window_get_x() Returns the current x-coordinate of the window.
window_get_y()  Returns the current y-coordinate of the window.
window_get_width() Returns the current width of the window.
window_get_height() Returns the current height of the window.
*/

if !keyboard_check(ord("F")){
prevx=display_mouse_get_x()
prevy=display_mouse_get_y()
display_mouse_set(ofx ,ofy)
movx=ofx-prevx
movy=ofy-prevy
direction+=movx/4

zdir+=movy/400
if (zdir>6.26){
    zdir=6.26
}if (zdir<3.24){
    zdir=3.24
}
zdirt=cos(zdir)
}
#define Keyboard_65
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
x+=cos(degtorad(direction+90))
y-=sin(degtorad(direction+90))
#define Keyboard_68
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
x+=cos(degtorad(direction-90))
y-=sin(degtorad(direction-90))
#define Keyboard_69
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
z-=.5
#define Keyboard_81
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
z+=.5
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
d3d_set_projection(x,y,z,x+cos(degtorad(direction)) * zdir,y-sin(degtorad(direction))*zdir,(zdirt*16)+z,0,0,1)
d3d_draw_ellipsoid(x-200,y-200,z-200,x+200,y+200,z+200,background_get_texture(background5),1,1,50)
#define KeyPress_32
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if mv {
zsp=3
z+=zsp
}
