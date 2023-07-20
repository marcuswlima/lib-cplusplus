OBJ=obj/
SRC=src/
TARGET=$(OBJ)libs.sh
CC=g++
DEBUG=-g
OPT=-O2
WARN=-Wall
CCFLAGS=$(DEBUG) $(OPT) $(WARN)
LD=g++
GTK=$$(pkg-config gtkmm-3.0 --cflags --libs) -export-dynamic
NCURSES=-lncurses
OBJS=$(OBJ)main.o $(OBJ)BarraTitulo.o $(OBJ)Mathematics.o $(OBJ)NumeroExtenso.o $(OBJ)ObterNumero.o $(OBJ)PrintArray.o $(OBJ)SystemNumeral.o

all: $(OBJS)
	$(LD) -o $(TARGET) $(OBJS) 
 
$(OBJ)BarraTitulo.o: $(SRC)BarraTitulo.cpp $(SRC)BarraTitulo.h  
	$(CC) -c $(SRC)BarraTitulo.cpp -o $(OBJ)BarraTitulo.o

$(OBJ)Mathematics.o: $(SRC)Mathematics.cpp $(SRC)Mathematics.h  
	$(CC) -c $(SRC)Mathematics.cpp -o $(OBJ)Mathematics.o

$(OBJ)NumeroExtenso.o: $(SRC)NumeroExtenso.cpp $(SRC)NumeroExtenso.h  
	$(CC) -c $(SRC)NumeroExtenso.cpp -o $(OBJ)NumeroExtenso.o

$(OBJ)ObterNumero.o: $(SRC)ObterNumero.cpp $(SRC)ObterNumero.h  
	$(CC) -c $(SRC)ObterNumero.cpp -o $(OBJ)ObterNumero.o

$(OBJ)PrintArray.o: $(SRC)PrintArray.cpp $(SRC)PrintArray.h  
	$(CC) -c $(SRC)PrintArray.cpp -o $(OBJ)PrintArray.o

$(OBJ)SystemNumeral.o: $(SRC)SystemNumeral.cpp $(SRC)SystemNumeral.h  
	$(CC) -c $(SRC)SystemNumeral.cpp -o $(OBJ)SystemNumeral.o

$(OBJ)main.o: $(SRC)main.cpp 
	$(CC) -c $(SRC)main.cpp -o $(OBJ)main.o

run:all
	$(TARGET) par1 par2 par3

clean:
	rm $(OBJ)*.o


