
F77=gfortran
FFLAGS = -O3
LFLAGS = -O3

OBJECTS = plotxy4.o
HOSTLIBS= -lm
NUMREC =  ~gebhardt/lib/numrec/numrec.a
BIWT   =  ~gebhardt/progs/biwgt.o
QUEST  =  ~gebhardt/lib/libquest/libquest.o
GCV    =  ~gebhardt/lib/gcv/gcvspl.o
PGPLOT =  ~gebhardt/lib/pgplot/libpgplot.a -L/usr/X11R6/lib -lX11

plotxy4:  plotxy4.o 
	$(F77) $(LFLAGS) -o plotxy4 $(OBJECTS) $(PGPLOT) $(BIWT) $(QUEST) $(NUMREC)

plotxy4.o:  plotxy4.f
	$(F77) -c $(FFLAGS) plotxy4.f
