import socket
Server_Socket = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
Server_Socket.bind(('0.0.0.0', 32000))
Server_Socket.listen(5) # 5 halat buffer darad

# date ke miayad bayad modam tekrar shavad baraye hamin yek halgheye bi nahayat ijad mikonim

while True: 
   Client_Socket, (host, port) = Server_Socket.accept() # client socket ra hamrahe host va port ersal mikonad
   Receive_data = Client_Socket.recv(40) #byte
   new_date = "ECHO: "+Receive_data.decode()
   Client_Socket.send(new_date.encode)
   Client_Socket.close()