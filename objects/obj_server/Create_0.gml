/// @description Initialize the server
var type = network_socket_tcp;
var port = 8000;
var max_clients = 1;
server = network_create_server(type, port, max_clients);
socket = noone;