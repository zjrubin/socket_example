# Sockets Example Code

## Explaination of code files

-   `server.cpp`: Runs a server that listens for messages from clients.
-   `client.cpp`: Creates a client that sends a single message to the server.

## Helper functions

The file `utility.h` contains functions to help you set up the `sockaddr_in` structs for your sockets.

## Compile examples

**Note:** You must have [CMake](https://cmake.org/download/) installed

```bash
# To build
mkdir build
cd build
cmake ..
make
```

## Run the server and clients

In one terminal, run the server and specify a port to listen on:

```bash
$ ./server 8888
Server listening on port 8888...
```

In another terminal, spawn a client to send a message to the server:

```bash
$ ./client localhost 8888 "hello server"
Sending message hello server to localhost:8888
Server responds with status code 42
```

The server should print the message it receives to the terminal:

```bash
$ ./server 8888
Server listening on port 8888...
New connection 4
Client 4 says "hello server"
```
