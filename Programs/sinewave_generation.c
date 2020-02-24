#include<stdio.h>
#include<math.h>

float y[150];
int n;
void main() {
	y[0] = 1;
	y[1] = 1;
	for (n = 2; n < 150; n++) {
		y[n] = 1.9447 * y[n-1] - y[n-2];
 	}
}
