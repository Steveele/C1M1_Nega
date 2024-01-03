/******************************************************************************
 * Copyright (C) 2017 by Alex Fosdick - University of Colorado
 *
 * Redistribution, modification or use of this software in source or binary
 * forms is permitted as long as the files maintain this copyright. Users are 
 * permitted to modify this and use it to learn about the field of embedded
 * software. Alex Fosdick and the University of Colorado are not liable for any
 * misuse of this material. 
 *
 *****************************************************************************/
/**
 * @file <Add File Name> 
 * @brief <This is a week 1 programming  project for Emnedded Systems. It includes some basic 
 function to compute mean , median , max , min and sort an array >
 
 *

 *
 * @author <Estifanos Nega>
 * @date <Nov 29 - 2023 >
 *
 */



#include <stdio.h>
#include "stats.h"

/* Size of the Data Set */
#define SIZE (40)





unsigned char find_minimum(unsigned char* data, unsigned int length) {
 
 unsigned char min=data[0];

 
 for (int i=1;i<length;i++){
 	
 	if(data[i]<min){
 		min=data[i];
         }
    }
return min;
}

unsigned char find_Maximum(unsigned char* data, unsigned int length) {
 
 unsigned char max=data[0];

 
 for (int i=1;i<length;i++){
 	
 	if(data[i]>max){
 		max=data[i];
         }
    }
return max;
}




unsigned char find_mean(unsigned char* data, unsigned int length) {
 
 unsigned int sum=data[0];
  float mean;

 
 for (int i=1;i<length;i++){
 	sum+=data[i];
 	
 	}
 	mean=sum/length;
 	
    
return (unsigned char)mean;
}

unsigned char find_median(unsigned char* data, unsigned int length) {
 
	if (length %2==0){
	
	    return (data[length/2] + data[(length/2)+1])/2;
	}
	else {
		return data[(length/2)+1];
	
	}
 
 

}


void Print_statstics(unsigned char* data, unsigned int length) {
        
 
  printf("\nMean :%d\n ",find_mean(data,length));
  printf("Minimum :%d\n ",find_minimum(data,length));
  printf("Maximum :%d\n ",find_Maximum(data,length));
  printf("Median :%d\n ",find_median(data,length));
 


}

void print_array(unsigned char* data, unsigned int length){

  printf("The Array is as follows :\n");
  for (int i=0 ; i<length; i++){
        if (i%8==0 && i!=0){
           printf(" %d\n",data[i]);
        }
  	else{
  	   printf(" %d",data[i]);
  	}
  
  }
  }


unsigned char* sort_array(unsigned char* data, unsigned int length){
	
	
	for (int i=0;i<length;i++){
		for (int j=0;j<length-1-i;j++){
			if (data[j] > data[j+1]) {
			
                		unsigned char temp = data[j];
                		data[j] = data[j+1];
                		data[j+1] = temp;
			}
		}
	}
	
	printf (" %d ",data[21]);
	
	return data;
}


void main() { 

  unsigned char test[SIZE] = { 34, 201, 190, 154,   8, 194,   2,   6,
                              114, 88,   45,  76, 123,  87,  25,  23,
                              200, 122, 150, 90,   92,  87, 177, 244,
                              201,   6,  12,  60,   8,   2,   5,  67,
                                7,  87, 250, 230,  99,   3, 100,  90};
      print_array(test , SIZE);
      sort_array(test , SIZE);
      Print_statstics(test, SIZE);
      
    
      
     
  /* Other Variable Declarations Go Here */
  /* Statistics and Printing Functions Go Here */
  
 

}

/* Add other Implementation File Code Here */

