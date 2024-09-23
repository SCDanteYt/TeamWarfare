#define Draw_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
d3d_set_projection_ortho(0,0,640,480,0){
    draw_text(0,0,"x= " + string(obj_play.x) + "#y= "+ string(obj_play.y)+"#z="+string(obj_play.z))
}
