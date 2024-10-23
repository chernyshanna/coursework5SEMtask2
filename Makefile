# Makefile

CXX = g++
CXXFLAGS = -Wall -std=c++11

OBJS = main.o calculator.o
EXEC = calculator_app

#бібліотека
LIBRARY = libcalculator.a

#збірка виконуваного файлу
$(EXEC): $(OBJS) $(LIBRARY)
	$(CXX) $(OBJS) -L. -lcalculator -o $(EXEC)

#збірка статичної бібліотеки
$(LIBRARY): calculator.o
	ar rcs $(LIBRARY) calculator.o

#компіляція main.cpp
main.o: main.c calculator.h
	$(CXX) $(CXXFLAGS) -c main.c

#компіляція calculator.cpp
calculator.o: calculator.cpp calculator.h
	$(CXX) $(CXXFLAGS) -c calculator.cpp

#очищення
clean:
	rm -f $(OBJS) $(EXEC) $(LIBRARY)
