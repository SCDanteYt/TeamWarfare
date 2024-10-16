#define Create_0
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
d3d_light_define_ambient(c_white)

ofx=window_get_x() + window_get_width()/2
ofy=window_get_y() + window_get_height()/2
sp=0
z=0
sidexsp=0
sideysp=0
sidesp=0
sidedir=0
xsp=0
ysp=0
zsp=0
zdirt=0
zdir=pi
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

prevx=display_mouse_get_x()
prevy=display_mouse_get_y()

if !keyboard_check(ord("M")){
    display_mouse_set(ofx ,ofy)
    movx=ofx-prevx
    movy=ofy-prevy
    direction+=movx/4
}
zdir+=movy/400
if (zdir>6.26){
    zdir=6.26
}if (zdir<3.24){
    zdir=3.24
}
zdirt=cos(zdir)
mv=false
zsp-=.3
z+=zsp
col=collision_circle(x,y,6,obj_floor,1,1)
if col<=0{
col=collision_circle(x,y,6,obj_floor2,1,1)
}if col<=0{
col=collision_circle(x,y,6,obj_corner,1,1)
}

if col>0
{
    if (col.curz-6)+zsp <= z && col.curz >= z
    {
    zsp=0
    z+= col.curz-z
    mv=true
    }
}


//-----------------------------------------------------------------
y-=ysp*sp
for(aux=0;aux<=1000;aux+=1){
    y+=(ysp*sp)*.001
    if place_free(x,y)
    aux=1001
}
x+=xsp*sp
for(aux=0;aux<=1000;aux+=1){
    x-=(xsp*sp)*.001
    if place_free(x,y)
    aux=1001
}
xsp=cos(degtorad(direction))
ysp=sin(degtorad(direction))


if sp <0{

    sp+=.25
}if sp >0{

    sp-=.25
}
if sp >1.5{
    sp=1.5
}
if sp <-1.5{
    sp=-1.5
}



//----------------------------------------------
sidexsp=cos(degtorad(direction-90))
sideysp=sin(degtorad(direction-90))
y-=sideysp*sidesp
for(aux=0;aux<=1000;aux+=1){
    y+=(sideysp*sidesp)*.001
    if place_free(x,y)
    aux=1001
}
x+=sidexsp*sidesp
for(aux=0;aux<=1000;aux+=1){
    x-=(sidexsp*sidesp)*.001
    if place_free(x,y)
    aux=1001
}
if sidesp <0{

    sidesp+=.25
}if sidesp >0{

    sidesp-=.25
}
if sidesp >1{
    sidesp=1
}
if sidesp <-1{
    sidesp=-1
}
#define Keyboard_65
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
sidesp -=.5
#define Keyboard_68
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
sidesp +=.5
#define Keyboard_83
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
sp-=.5
#define Keyboard_87
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
sp+=.5
#define Draw_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/

d3d_set_projection_ext(x,y,z+16,x+cos(degtorad(direction)) * zdir,y-sin(degtorad(direction))*zdir,zdirt*16+(z+16),0,0,1,100,1.5,0.1,410)
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
