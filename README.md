# Chat Application
## Description:
[How to run code + Demo](https://youtu.be/PVFUfj2cqAQ)

A multi-client chat application written in C using TCP sockets and POSIX threads.

<img width="800" height="450" alt="cademo-ezgif com-video-to-gif-converter" src="https://github.com/user-attachments/assets/61ec28c5-9f11-462a-aee9-471397b0dc31" />


**chat_server** - binds to a port, accepts up to 10 concurrent clients, broadcasts each message to all other connected clients, and incrementally writes chat history to disk

**chat_client** - connects to the server on localhost, prompts for a username, and sends/receives messages concurrently using a dedicated listener thread

**Makefile** - Builds client and server with -lpthread

**chat_history** - Append mode message log, created/updated at runtime
## How To Run
### Build
  `make` #builds both client and server

  `make clean` #removes client, server, and chat_history

### Start the server
  `./server <port>`

  EX) `./server 8080`

### Connect a client 
  `./client <port>`

  EX) `./client 8080`

  **Note**:  Both client and server currently connect via 127.0.0.1 (localhost). To use across machines, the server address in chat_client.c would need to be changed to the host's IP.
