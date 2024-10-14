#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
global.amap[0,6]=0
global.amapW=0
map[0]=d3d_model_create()
i=0
for (i=0;i<256;i+=1){
    map[i]=d3d_model_create()
}
destroy=0
i=0
j=0
fName = get_open_filename("G3D Maps | *.g3d","")
fName=file_text_open_read(fName)
for(i=0;!file_text_eof(fName);i+=1){
    for(j=0;j<8;j+=1){
    global.amap[i,j]=file_text_read_real(fName)

    }
    file_text_readln(fName)
    global.amapW=i+1

}
femboy=0
for (i=0;i<global.amapW;i+=1){
    switch(global.amap[i,6]){
    case 1:
    femboy = instance_create(global.amap[i,3],global.amap[i,4],obj_floor)
    femboy.x2=global.amap[i,0]
    femboy.y2=global.amap[i,1]
    femboy.z2=global.amap[i,2]
    femboy.z1=global.amap[i,5]
    femboy.tex=global.amap[i,7]

    break;
    case 2:femboy = instance_create(global.amap[i,3],global.amap[i,4],obj_wall)
    femboy.x2=global.amap[i,0]
    femboy.y2=global.amap[i,1]
    femboy.z2=global.amap[i,2]
    femboy.z1=global.amap[i,5]
    femboy.tex=global.amap[i,7]
    break;
    case 3:femboy = instance_create(global.amap[i,3],global.amap[i,4],obj_cyl)
    femboy.x2=global.amap[i,0]
    femboy.y2=global.amap[i,1]
    femboy.z2=global.amap[i,2]
    femboy.z1=global.amap[i,5]
    femboy.tex=global.amap[i,7]
    break;
    case 4:d3d_model_cone(map[global.amap[i,7]],global.amap[i,0],global.amap[i,1],global.amap[i,2],global.amap[i,3],global.amap[i,4],global.amap[i,5],1,1,1,20)
    break;
    case 5:d3d_model_block(map[global.amap[i,7]],global.amap[i,0],global.amap[i,1],global.amap[i,2],global.amap[i,3],global.amap[i,4],global.amap[i,5],1,1)
    break;
    case 6:femboy = instance_create(global.amap[i,3],global.amap[i,4],obj_corner)
    femboy.x2=global.amap[i,0]
    femboy.y2=global.amap[i,1]
    femboy.z2=global.amap[i,2]
    femboy.z1=global.amap[i,5]
    femboy.tex=global.amap[i,7]
    break;
    case 7:
    femboy = instance_create(global.amap[i,3],global.amap[i,4],obj_floor2)
    femboy.x2=global.amap[i,0]
    femboy.y2=global.amap[i,1]
    femboy.z2=global.amap[i,2]
    femboy.z1=global.amap[i,5]
    femboy.tex=global.amap[i,7]
    break;
    case 8:femboy = instance_create(global.amap[i,3],global.amap[i,4],obj_play)
    femboy.z=global.amap[i,5]
    break;
    case 9:femboy = instance_create(global.amap[i,3],global.amap[i,4],obj_light)
    femboy.z=global.amap[i,5]
    break;
    }

}
