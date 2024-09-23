#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=531
invert=0
arg0=1
*/
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/

map[0]=d3d_model_create()
i=0
for (i=0;i<256;i+=1){
    map[i]=d3d_model_create()
}
destroy=0
i=0
j=0
for (i=0;i<global.amapW;i+=1){
    x2=global.amap[i,0]
    y2=global.amap[i,1]
    z2=global.amap[i,2]
    x1=global.amap[i,3]
    y1=global.amap[i,4]
    z1=global.amap[i,5]
    tipo=global.amap[i,6]
    tex=map[global.amap[i,7]]
    switch(tipo){
    case 1:d3d_model_floor(tex,x2,y2,z2,x1,y1,z1,1,1)
    break;
    case 2:d3d_model_wall(tex,x2,y2,z2,x1,y1,z1,1,1)
    break;
    case 3:d3d_model_cylinder(tex,x2,y2,z2,x1,y1,z1,1,1,1,20)
    break;
    case 4:d3d_model_cone(tex,x2,y2,z2,x1,y1,z1,1,1,1,20)
    break;
    case 5:d3d_model_block(tex,x2,y2,z2,x1,y1,z1,1,1)
    break;
    case 6:d3d_model_primitive_begin(tex,pr_trianglelist);
    d3d_model_vertex_texture(tex,x2,y2,z2,0,0)
    d3d_model_vertex_texture(tex,x2,y1,z2,0,1)
    d3d_model_vertex_texture(tex,x1,y2,z1,1,0)
    d3d_model_primitive_end(tex);
    break;
    case 7:d3d_model_primitive_begin(tex,pr_trianglelist);
    d3d_model_vertex_texture(tex,x2,y2,z2,0,0)
    d3d_model_vertex_texture(tex,x2,y1,z1,0,1)
    d3d_model_vertex_texture(tex,x1,y2,z2,1,0)

    d3d_model_vertex_texture(tex,x1,y1,z1,1,1)
    d3d_model_vertex_texture(tex,x2,y1,z1,0,1)
    d3d_model_vertex_texture(tex,x1,y2,z2,1,0)
    d3d_model_primitive_end(tex);
    break;
    case 8:d3d_model_cylinder(tex,x1-6,y1-6,z1,x1+6,y1+6,z1+16,1,1,1,16)
    }

}fName=""
fName1=""
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
menuBar= N_Menu_CreateMenuBar()
fileSect=N_Menu_CreatePopupMenu()
fileSave=N_Menu_AddItem(fileSect,"export","")
fileLoad=N_Menu_AddItem(fileSect,"import","")
N_Menu_AddMenu(menuBar,fileSect,"File")
N_Menu_AttachMenuBar(window_handle(),menuBar)
#define Step_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if destroy{
    instance_destroy()
}
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
global.MenuCheck=N_Menu_CheckMenus();
switch(global.MenuCheck){
    case fileSave: fName =get_save_filename('G3D Maps|*.g3d',".g3d")
    fName=file_text_open_write(fName)
    for (i=0;i<global.amapW;i+=1){
    for(j=0;j<8;j+=1){
    file_text_write_real(fName,global.amap[i,j])
    }
    file_text_writeln(fName)
    }file_text_close(fName)
    break;
    case fileLoad:
    fName = get_open_filename("G3D Maps | *.g3d","")
    fName=file_text_open_read(fName)
    for(i=0;!file_text_eof(fName);i+=1){
    for(j=0;j<8;j+=1){
    global.amap[i,j]=file_text_read_real(fName)
    }
    file_text_readln(fName)
    global.amapW=i+1
    }file_text_close(fName)
    instance_change(obj_map,true)
    break;
}
#define Draw_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
for (i=0;i<256;i+=1){
    d3d_model_draw(map[i],0,0,0,i)
}
