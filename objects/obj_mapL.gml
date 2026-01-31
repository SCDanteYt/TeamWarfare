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
aux=0
for (i=0;i<global.amapW;i+=1){
    switch(global.amap[i,6]){
    case 1:
    aux = instance_create(global.amap[i,3],global.amap[i,4],obj_floor)
    aux.x2=global.amap[i,0]
    aux.y2=global.amap[i,1]
    aux.z2=global.amap[i,2]
    aux.z1=global.amap[i,5]
    aux.tex=global.amap[i,7]

    break;
    case 2:aux = instance_create(global.amap[i,3],global.amap[i,4],obj_wall)
    aux.x2=global.amap[i,0]
    aux.y2=global.amap[i,1]
    aux.z2=global.amap[i,2]
    aux.z1=global.amap[i,5]
    aux.tex=global.amap[i,7]
    break;
    case 3:aux = instance_create(global.amap[i,3],global.amap[i,4],obj_cyl)
    aux.x2=global.amap[i,0]
    aux.y2=global.amap[i,1]
    aux.z2=global.amap[i,2]
    aux.z1=global.amap[i,5]
    aux.tex=global.amap[i,7]
    break;
    case 4:d3d_model_cone(map[global.amap[i,7]],global.amap[i,0],global.amap[i,1],global.amap[i,2],global.amap[i,3],global.amap[i,4],global.amap[i,5],1,1,1,20)
    break;
    case 5:d3d_model_block(map[global.amap[i,7]],global.amap[i,0],global.amap[i,1],global.amap[i,2],global.amap[i,3],global.amap[i,4],global.amap[i,5],1,1)
    break;
    case 6:aux = instance_create(global.amap[i,3],global.amap[i,4],obj_corner)
    aux.x2=global.amap[i,0]
    aux.y2=global.amap[i,1]
    aux.z2=global.amap[i,2]
    aux.z1=global.amap[i,5]
    aux.tex=global.amap[i,7]
    break;
    case 7:
    aux = instance_create(global.amap[i,3],global.amap[i,4],obj_floor2)
    aux.x2=global.amap[i,0]
    aux.y2=global.amap[i,1]
    aux.z2=global.amap[i,2]
    aux.z1=global.amap[i,5]
    aux.tex=global.amap[i,7]
    break;
    case 8:aux = instance_create(global.amap[i,3],global.amap[i,4],obj_play)
    aux.z=global.amap[i,5]
    break;
    case 9:aux = instance_create(global.amap[i,3],global.amap[i,4],obj_light)
    aux.z=global.amap[i,5]
    break;
    }

}
