CXX = g++
CXXFLAGS = -g -std=c++17 -pedantic

all: server client

server: server.cpp Utility.o
	$(CXX) $(CXXFLAGS) $^ -o server

client: client.cpp Utility.o
	$(CXX) $(CXXFLAGS) $^ -o client

clean:
	rm -rf client server *.dSYM *.o

.PHONY: clean
