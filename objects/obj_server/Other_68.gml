/// @description Check for clients and data
var type_event = async_load[? "type"];

switch(type_event) {
	case(network_type_connect):
		// Add client to scoket variable
		if(socket == noone){
			socket = async_load[? "socket"];
		}
		break;
		
	case(network_type_disconnect):
		// Remove client from socket variable
		socket = noone;
		break;
		
	case(network_type_data):
		// Handle the data
		var buffer = async_load[? "buffer"];
		buffer_seek(buffer, buffer_seek_relative, 0);
		scr_received_packet(buffer)
		break;
}