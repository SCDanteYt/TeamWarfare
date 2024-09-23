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
#define Alarm_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/

image_xscale=(x2-x)/128
image_yscale=(y2-y)/128
#define Step_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
curz=scr_funlineal(x,z1,x2,z2,obj_play.x)
if obj_play.z>z1
{
    mask_index=sprite19


}else{
    mask_index=-1
}
#define Draw_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
d3d_primitive_begin_texture(pr_trianglelist,tex);
    d3d_vertex_texture(x2,y2,z2,0,0)
    d3d_vertex_texture(x2,y,z2,0,1)
    d3d_vertex_texture(x,y2,z1,1,0)

d3d_primitive_end();
