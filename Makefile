CXX = g++
CXXFLAGS = -g -std=c++17 -pedantic

all: server client

server: server.cpp utility.cpp
	$(CXX) $(CXXFLAGS) $^ -o server

client: client.cpp utility.cpp
	$(CXX) $(CXXFLAGS) $^ -o client

clean:
	rm -rf client server *.dSYM *.o

.PHONY: clean
