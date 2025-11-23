contact: contact_list.o main.o
	gcc -o contact contact_list.o main.o

contact_list.o: contact_list.c contact_list.h
	gcc -c contact_list.c -o contact_list.o

main.o: main.c contact_list.h
	gcc -c main.c -o main.o

clean:
	rm -f contact contact_list.o main.o

run: contact
	./contact