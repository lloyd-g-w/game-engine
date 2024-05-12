CFLAGS = -std=c++17 -O2
LDFLAGS = -lglfw -lvulkan -ldl -lpthread -lX11 -lXxf86vm -lXrandr -lXi

game_engine: main.cpp
	g++ $(CFLAGS) -o game_engine main.cpp $(LDFLAGS)

.PHONY: test clean

test: game_engine 
	./game_engine

clean:
	rm -f game_engine 
