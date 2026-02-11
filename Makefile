all:
        gcc chat_client.c -o client -lpthread
        gcc chat_server.c -o server -lpthread

clean:
        rm -f client server chat_history
