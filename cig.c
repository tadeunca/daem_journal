#include <stdio.h>
#include <stdlib.h>

#define cache_size 524288 // em bytes
#define cache_line_size 64 // em bytes
#define k 16
#define ram_size 1073741824 // em bytes
#define ram_block_size 64 // em bytes

//The code should be executed in the terminal using
//taskset --cpu-list ./occupying_cache 

void occupying_cache(){
	
	int vetor[cache_size];
	for(int i = 0; i < cache_size; i++){
		int valor = rand() % cache_size;
		vetor[i] = valor;
	}
    while(1){
		for(int i = 0; i < cache_size; i+=cache_line_size){
			vetor[i] = 0xff;
		}
    }
}
int main(){
	occupying_cache();
}
