# I personally don't care if you steal this makefile. --GM

CFLAGS = -g `sdl-config --cflags`
LDFLAGS = -g
LIBS = `sdl-config --libs`
BINNAME = bts

INCLUDES = common.h
OBJS = main.o map.o model.o render.o

all: $(BINNAME)

$(BINNAME): $(OBJS)
	$(CC) -o $(BINNAME) $(LDFLAGS) $(OBJS) $(LIBS)

%.o: %.c $(INCLUDES)
	$(CC) -c -o $@ $(CFLAGS) $<

