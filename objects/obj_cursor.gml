#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
z=0
t=1
tex=0

xst=0
yst=0
zst=0
drawing=0
#define Draw_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
d3d_draw_wall(x-3,y,z-3,x+3,y,z+3,sprite_get_texture(spr_cur,0),1,1)
d3d_draw_wall(x,y-3,z-3,x,y+3,z+3,sprite_get_texture(spr_cur,0),1,1)
d3d_draw_floor(x-3,y-3,z,x+3,y+3,z,sprite_get_texture(spr_cur,0),1,1)
if drawing {
switch(t){

    case 1:d3d_draw_floor(xst,yst,zst,x,y,z,tex,1,1)
    break;
    case 2:d3d_draw_wall(xst,yst,zst,x,y,z,tex,1,1)

    break;
    case 3:d3d_draw_cylinder(xst,yst,zst,x,y,z,tex,1,1,1,20)
    break;
    case 4:d3d_draw_cone(xst,yst,zst,x,y,z,tex,1,1,1,20)
    break;
    case 5:d3d_draw_block(xst,yst,zst,x,y,z,tex,1,1)
    break;
    case 6:d3d_primitive_begin_texture(pr_trianglelist,tex);
    d3d_vertex_texture(xst,yst,zst,0,0)
    d3d_vertex_texture(xst,y,zst,0,1)
    d3d_vertex_texture(x,yst,z,1,0)
    d3d_primitive_end();
    break;
    case 7:d3d_primitive_begin_texture(pr_trianglelist,tex);
    d3d_vertex_texture(xst,yst,zst,0,0)
    d3d_vertex_texture(xst,y,z,0,1)
    d3d_vertex_texture(x,yst,zst,1,0)

    d3d_vertex_texture(x,y,z,1,1)
    d3d_vertex_texture(xst,y,z,0,1)
    d3d_vertex_texture(x,yst,zst,1,0)
    d3d_primitive_end();
    break;
    case 8:d3d_draw_cylinder(x-6,y-6,z,x+6,y+6,z+16,-1,0,0,1,12)
    break;
    case 9:d3d_draw_wall(x-cos(degtorad(obj_camera.direction+90)),y+sin(degtorad(obj_camera.direction+90)),z+1,x+cos(degtorad(obj_camera.direction+90)),y-sin(degtorad(obj_camera.direction+90)),z-1,sprite_get_texture(spr_lampara,0),1,1)
    break;
    }

}draw_set_color(c_white)
#define KeyPress_49
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if drawing{
    t=1
    room_caption = "Floor Mode"
}
#define KeyPress_50
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if drawing{
    t=2
    room_caption = "Wall Mode"
}
#define KeyPress_51
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if drawing{
    t=3
    room_caption = "cylinder Mode"
}
#define KeyPress_52
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if drawing{
    t=4
    room_caption = "cone Mode"
}
#define KeyPress_53
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if drawing{
    t=5
    room_caption = "block Mode"

}
#define KeyPress_54
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if drawing{
    t=6
    room_caption = "CORNER Mode"

}
#define KeyPress_55
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if drawing{
    t=7
    room_caption = "pyramid Mode"
}
#define KeyPress_56
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if drawing{
    t=8
    room_caption = "&Player Spawner"
}
#define KeyPress_57
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if drawing{
    t=9
    room_caption = "Light Mode"
}
#define KeyPress_67
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if drawing{
    tex-=1

}
#define KeyPress_73
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
y-=1
#define KeyPress_74
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
x-=1
#define KeyPress_75
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
y+=1
#define KeyPress_76
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
x+=1
#define KeyPress_77
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
global.amapW=0
obj_map.destroy=1
#define KeyPress_79
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
z+=1
#define KeyPress_85
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
z-=1
#define KeyPress_86
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if drawing{
    tex+=1

}
#define KeyPress_88
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
global.amap[global.amapW,0]=xst
global.amap[global.amapW,1]=yst
global.amap[global.amapW,2]=zst
global.amap[global.amapW,3]=x
global.amap[global.amapW,4]=y
global.amap[global.amapW,5]=z
global.amap[global.amapW,6]=t
global.amap[global.amapW,7]=tex
 global.amapW +=1
 drawing=0
obj_map.destroy=1
instance_create(0,0,obj_map)
#define KeyPress_90
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
xst=x
yst=y
zst=z
drawing=1
