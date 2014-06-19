#include <locale.h>
#include <stdio.h>

int main(int argc, char **argv)
{
    printf("LC_ALL\t%d\nLC_NUMERIC\t%d\n", LC_ALL, LC_NUMERIC);
    return 0;
}

