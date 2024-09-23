#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
d3d_start()
i=0
#define Draw_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
draw_set_color(c_white)
d3d_set_projection_perspective(0,0,200,200,180)
d3d_transform_set_identity()
i+=1
d3d_transform_add_rotation_x(i)
d3d_transform_add_rotation_y(i)
d3d_transform_add_rotation_z(i)
d3d_transform_add_translation(100,50,0)
d3d_draw_floor(50,-20,0,-50,20,0,sprite_get_texture(sprite16,0),1,1)
d3d_transform_set_identity()
