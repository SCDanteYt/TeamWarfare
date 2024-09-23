#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
i=0
#define Draw_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
d3d_set_hidden(false)
d3d_set_projection_perspective(-35,-35,640,640,90)
d3d_transform_set_identity()
i+=1
d3d_transform_add_rotation_x(i)
d3d_transform_add_rotation_y(i)
d3d_transform_add_rotation_z(i)
switch(obj_cursor.t){

    case 1:d3d_draw_floor(-25,-25,-25,25,25,25,obj_cursor.tex,1,1)
    break;
    case 2:d3d_draw_wall(-25,-25,-25,25,25,25,obj_cursor.tex,1,1)
    break;
    case 3:d3d_draw_cylinder(-25,-25,-25,25,25,25,obj_cursor.tex,1,1,1,20)
    break;
    case 4:d3d_draw_cone(25,25,25,-25,-25,-25,obj_cursor.tex,1,1,1,20)
    break;
    case 5:d3d_draw_block(-25,-25,-25,25,25,25,obj_cursor.tex,1,1)
    break;
    case 6:d3d_draw_ellipsoid(-25,-25,-25,25,25,25,obj_cursor.tex,1,1,20)
    break;
    case 7:d3d_draw_cone(25,25,25,-25,-25,-25,obj_cursor.tex,1,1,1,4)
    break;
    }d3d_transform_set_identity()
    d3d_set_hidden(true)
