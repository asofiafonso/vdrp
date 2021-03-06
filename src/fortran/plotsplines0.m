
F77=gfortran
FFLAGS = -O3
LFLAGS = -O3

OBJECTS = plotsplines0.o
HOSTLIBS= -lm
NUMREC =  ~gebhardt/lib/numrec/numrec.a
BIWT   =  ~gebhardt/progs/biwgt.o
QUEST  =  ~gebhardt/lib/libquest/libquest.o
GCV    =  ~gebhardt/lib/gcv/gcvspl.o
PGPLOT =  ~gebhardt/lib/pgplot/libpgplot.a -L/usr/X11R6/lib -lX11

plotsplines0:  plotsplines0.o 
	$(F77) $(LFLAGS) -o plotsplines0 $(OBJECTS) $(PGPLOT) $(BIWT)

plotsplines0.o:  plotsplines0.f
	$(F77) -c $(FFLAGS) plotsplines0.f
