#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
dllinit("39dll.dll",1,1)
global.port = 27015
global.ip = get_string("PONE TU IP WACHI","localhost")
global.username = get_string("decime q nombre qri usar en el juego","")
//initialize
global.clienttcp = tcpconnect(global.ip, global.port, 1)

//check if connection succesfull
if tcpconnected(global.clienttcp){
    clearbuffer()
    writebyte(1)
    writestring(global.username,1)
    sendmessage(global.clienttcp)
}else{
    show_message("che, el server no esta disponible bola")
}
#define Other_3
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
closesocket(global.clienttcp)
dllfree()
