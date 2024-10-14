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
curz=0
tex=0
noDraw=0
alarm[0]=1
light=0
color=0
#define Alarm_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/

image_xscale=(x2-x)
image_yscale=y2-y
#define Step_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if x==x2{
instance_destroy()
}
if obj_play.z-6>curz
{
    mask_index=sprite19
}else{
    mask_index=-1

}
if curz-6>obj_play.z
{
    mask_index=sprite19
}else{
    mask_index=-1

}

if !noDraw
    curz=scr_funlineal(x+.01,z1,x2,z2,obj_play.x)

depth= curz
#define Draw_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/

if !noDraw
{
d3d_primitive_begin_texture(pr_trianglelist,tex);

    d3d_vertex_texture(x2,y2,z2,0,0)

    d3d_vertex_texture(x2,y,z2,0,1)

    d3d_vertex_texture(x,y2,z1,1,0)

    d3d_vertex_texture(x,y,z1,1,1)

    d3d_vertex_texture(x2,y,z2,0,1)

    d3d_vertex_texture(x,y2,z1,1,0)
d3d_primitive_end();
}
