import socket
Client_Socket = socket.socket(socket.AF_INET, socket.SOCK_STREAM) # AF_INET yani estefade az tcp
Client_Socket.connect(('127.0.0.1', 32000))
msg = input("enter a msg: ")
Client_Socket.send(msg.encode()) # etelaat be byte ersal mishavad bayad encode va samte server decode shavad ta be txt tabdil shavad
echo_msg = Client_Socket.recv(40)
print(echo_msg.decode)
Client_Socket.close()
