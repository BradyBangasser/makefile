CXX ?= g++
CSTD ?= c++11
SRCDIR := src
OUTDIR := out
LIBDIR := lib
INCLUDEDIR := include
FLAGS ?= -Wall
OUT ?= a.out

SRCS := $(wildcard $(SRCDIR)/*.cpp)
OBJS := $(patsubst $(SRCDIR)/%.cpp, $(OUTDIR)/%.o, $(SRCS))
LIBS := $(wildcard $(LIBDIR)/*.so)

$(OUT): $(OBJS) makefile
	$(CXX) --std=$(CSTD) -L$(LIBDIR) $(OBJS) -I $(INCLUDEDIR) $(FLAGS) -o $(OUT) $(LIBS)

$(OUTDIR)/%.o: $(SRCDIR)/%.cpp makefile
	$(CXX) --std=$(CSTD) -c $< -o $@ -I $(INCLUDEDIR)

install: 
	mkdir include out lib

clean:
	rm -rf $(OUTDIR)/* $(OUT)

.PHONY: install clean