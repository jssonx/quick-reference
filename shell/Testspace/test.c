#include<stdio.h>

int main(void) {
    printf("stdout\n");
    fprintf(stdout, "stdout\n");
    fprintf(stderr, "stderr\n");
    return 0;
}