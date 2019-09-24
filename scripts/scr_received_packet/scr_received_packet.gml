///scr_received_packet(buffer);
///@param buffer

var buffer = argument0;
var message_id = buffer_read(buffer, buffer_u8);

switch(message_id) {
	case(1):
		var mx = buffer_read(buffer, buffer_u32);
		var my = buffer_read(buffer, buffer_u32);
		instance_create_layer(mx, my, "Instances", obj_click);
		break;
}