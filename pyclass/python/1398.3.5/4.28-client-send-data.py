import socket
Client_Socket = socket.socket(socket.AF_INET, socket.SOCK_STREAM) # AF_INET yani estefade az tcp
Client_Socket.connect(('127.0.0.1', 32000))
msg = input("enter a msg: ")
Client_Socket.send(msg.encode("utf8")) # etelaat be byte ersal mishavad bayad encode va samte server decode shavad ta be txt tabdil shavad
Client_Socket.close()
