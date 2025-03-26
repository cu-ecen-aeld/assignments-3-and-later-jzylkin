#include <stdio.h>
#include <errno.h>

int main(int argc, char *argv[]) 
{
	if (argc != 3)
	{
		printf("wrong number of arguments\n");
		return 1;
	}

	char * filename = argv[1];
	char * string = argv[2];

	FILE * fd = fopen(filename, "w");

	if (errno != 0)
	{
	    	printf("could not open file\n");
		return 1;
	}

	fprintf(fd, "%s", string);

	fclose(fd);

	return 0;
}
