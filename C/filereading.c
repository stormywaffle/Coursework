#include <stdio.h>
#include <stdbool.h>

/*This file will output the text of any file you pass to it. */

int main(int argc, char const **argv)
{
    char a;
    a = getchar();
 
    while (a!=EOF) {;
        putchar(a);
        a = getchar();
    }
    
return 0;
}
