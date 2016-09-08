#------------------------------------------------------------------------------#
# 	Simakis Panagiotis		simakis@ceid.upatras.gr
#------------------------------------------------------------------------------#


WORKDIR = `pwd`

CC = gcc
CXX = g++
AR = ar
LD = g++
WINDRES = windres

INC =
CFLAGS = -Wall -fexceptions
RESINC =
LIBDIR =
LIB =
LDFLAGS =

INC_DEBUG = $(INC) -Iinclude
CFLAGS_DEBUG = $(CFLAGS) -g
RESINC_DEBUG = $(RESINC)
RCFLAGS_DEBUG = $(RCFLAGS)
LIBDIR_DEBUG = $(LIBDIR)
LIB_DEBUG = $(LIB)
LDFLAGS_DEBUG = $(LDFLAGS)
OBJDIR_DEBUG = obj/Debug
DEP_DEBUG =
OUT_DEBUG = bin/Debug/football-game

INC_RELEASE = $(INC) -Iinclude
CFLAGS_RELEASE = $(CFLAGS) -O2
RESINC_RELEASE = $(RESINC)
RCFLAGS_RELEASE = $(RCFLAGS)
LIBDIR_RELEASE = $(LIBDIR)
LIB_RELEASE = $(LIB)
LDFLAGS_RELEASE = $(LDFLAGS) -s
OBJDIR_RELEASE = obj/Release
DEP_RELEASE =
OUT_RELEASE = cplusplus-footballgame_linux

OBJ_DEBUG = $(OBJDIR_DEBUG)/main.o $(OBJDIR_DEBUG)/src/Amyntikos.o $(OBJDIR_DEBUG)/src/Epithetikos.o $(OBJDIR_DEBUG)/src/Mpala.o $(OBJDIR_DEBUG)/src/Omada.o $(OBJDIR_DEBUG)/src/Paixnidi.o $(OBJDIR_DEBUG)/src/Paiktis.o

OBJ_RELEASE = $(OBJDIR_RELEASE)/main.o $(OBJDIR_RELEASE)/src/Amyntikos.o $(OBJDIR_RELEASE)/src/Epithetikos.o $(OBJDIR_RELEASE)/src/Mpala.o $(OBJDIR_RELEASE)/src/Omada.o $(OBJDIR_RELEASE)/src/Paixnidi.o $(OBJDIR_RELEASE)/src/Paiktis.o

all: debug release

clean: clean_debug clean_release

before_debug:
	test -d bin/Debug || mkdir -p bin/Debug
	test -d $(OBJDIR_DEBUG) || mkdir -p $(OBJDIR_DEBUG)
	test -d $(OBJDIR_DEBUG)/src || mkdir -p $(OBJDIR_DEBUG)/src

after_debug:

debug: before_debug out_debug after_debug

out_debug: before_debug $(OBJ_DEBUG) $(DEP_DEBUG)
	$(LD) $(LIBDIR_DEBUG) -o $(OUT_DEBUG) $(OBJ_DEBUG)  $(LDFLAGS_DEBUG) $(LIB_DEBUG)

$(OBJDIR_DEBUG)/main.o: main.cpp
	$(CXX) $(CFLAGS_DEBUG) $(INC_DEBUG) -c main.cpp -o $(OBJDIR_DEBUG)/main.o

$(OBJDIR_DEBUG)/src/Amyntikos.o: src/Amyntikos.cpp
	$(CXX) $(CFLAGS_DEBUG) $(INC_DEBUG) -c src/Amyntikos.cpp -o $(OBJDIR_DEBUG)/src/Amyntikos.o

$(OBJDIR_DEBUG)/src/Epithetikos.o: src/Epithetikos.cpp
	$(CXX) $(CFLAGS_DEBUG) $(INC_DEBUG) -c src/Epithetikos.cpp -o $(OBJDIR_DEBUG)/src/Epithetikos.o

$(OBJDIR_DEBUG)/src/Mpala.o: src/Mpala.cpp
	$(CXX) $(CFLAGS_DEBUG) $(INC_DEBUG) -c src/Mpala.cpp -o $(OBJDIR_DEBUG)/src/Mpala.o

$(OBJDIR_DEBUG)/src/Omada.o: src/Omada.cpp
	$(CXX) $(CFLAGS_DEBUG) $(INC_DEBUG) -c src/Omada.cpp -o $(OBJDIR_DEBUG)/src/Omada.o

$(OBJDIR_DEBUG)/src/Paixnidi.o: src/Paixnidi.cpp
	$(CXX) $(CFLAGS_DEBUG) $(INC_DEBUG) -c src/Paixnidi.cpp -o $(OBJDIR_DEBUG)/src/Paixnidi.o

$(OBJDIR_DEBUG)/src/Paiktis.o: src/Paiktis.cpp
	$(CXX) $(CFLAGS_DEBUG) $(INC_DEBUG) -c src/Paiktis.cpp -o $(OBJDIR_DEBUG)/src/Paiktis.o

clean_debug:
	rm -f $(OBJ_DEBUG) $(OUT_DEBUG)
	rm -rf bin/Debug
	rm -rf $(OBJDIR_DEBUG)
	rm -rf $(OBJDIR_DEBUG)/src

before_release:
	test -d bin/Release || mkdir -p bin/Release
	test -d $(OBJDIR_RELEASE) || mkdir -p $(OBJDIR_RELEASE)
	test -d $(OBJDIR_RELEASE)/src || mkdir -p $(OBJDIR_RELEASE)/src

after_release:

release: before_release out_release after_release

out_release: before_release $(OBJ_RELEASE) $(DEP_RELEASE)
	$(LD) $(LIBDIR_RELEASE) -o $(OUT_RELEASE) $(OBJ_RELEASE)  $(LDFLAGS_RELEASE) $(LIB_RELEASE)

$(OBJDIR_RELEASE)/main.o: main.cpp
	$(CXX) $(CFLAGS_RELEASE) $(INC_RELEASE) -c main.cpp -o $(OBJDIR_RELEASE)/main.o

$(OBJDIR_RELEASE)/src/Amyntikos.o: src/Amyntikos.cpp
	$(CXX) $(CFLAGS_RELEASE) $(INC_RELEASE) -c src/Amyntikos.cpp -o $(OBJDIR_RELEASE)/src/Amyntikos.o

$(OBJDIR_RELEASE)/src/Epithetikos.o: src/Epithetikos.cpp
	$(CXX) $(CFLAGS_RELEASE) $(INC_RELEASE) -c src/Epithetikos.cpp -o $(OBJDIR_RELEASE)/src/Epithetikos.o

$(OBJDIR_RELEASE)/src/Mpala.o: src/Mpala.cpp
	$(CXX) $(CFLAGS_RELEASE) $(INC_RELEASE) -c src/Mpala.cpp -o $(OBJDIR_RELEASE)/src/Mpala.o

$(OBJDIR_RELEASE)/src/Omada.o: src/Omada.cpp
	$(CXX) $(CFLAGS_RELEASE) $(INC_RELEASE) -c src/Omada.cpp -o $(OBJDIR_RELEASE)/src/Omada.o

$(OBJDIR_RELEASE)/src/Paixnidi.o: src/Paixnidi.cpp
	$(CXX) $(CFLAGS_RELEASE) $(INC_RELEASE) -c src/Paixnidi.cpp -o $(OBJDIR_RELEASE)/src/Paixnidi.o

$(OBJDIR_RELEASE)/src/Paiktis.o: src/Paiktis.cpp
	$(CXX) $(CFLAGS_RELEASE) $(INC_RELEASE) -c src/Paiktis.cpp -o $(OBJDIR_RELEASE)/src/Paiktis.o

clean_release:
	rm -f $(OBJ_RELEASE) $(OUT_RELEASE)
	rm -rf bin/Release
	rm -rf $(OBJDIR_RELEASE)
	rm -rf $(OBJDIR_RELEASE)/src

.PHONY: before_debug after_debug clean_debug before_release after_release clean_release
