all: templateC

TEMPLATE_C_EXECUTABLE = template.bin

templateC:
	gcc -o $(TEMPLATE_C_EXECUTABLE) template.c

clean:
	rm -f $(TEMPLATE_C_EXECUTABLE)
