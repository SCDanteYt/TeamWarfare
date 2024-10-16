#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
d3d_end()
ip=mplay_ipaddress()
show_debug_message(ip+":27015")
mplay_init_tcpip(ip + ":27015")

mplay_data_mode(false)
mplay_session_mode(true)
show_debug_message(mplay_connect_status())
mplay_session_create("bro",10,"Test")
show_debug_message(mplay_session_status)
#define Draw_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
draw_text(0,0,"ip: " + ip)
draw_text(0,20,mplay_session_status())
