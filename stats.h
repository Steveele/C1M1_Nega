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
 * @brief <Add Brief Description Here >
 *
 * <Add Extended Description Here>
 *
 * @author <Add FirsName LastName>
 * @date <Add date >
 *
 */
#ifndef __STATS_H__
#define __STATS_H__

/* This function takes an Unsigned character data and length of the array the computes it's maximum value from the given input *
@param unsigned character
@param return the maximim value value

*/ 
unsigned char find_Maximum(unsigned char* data, unsigned int length);


/* This function takes an Unsigned character data and length of the array the computes it's minimum value from the given input and returns it
@param unsigned character 
@param return the minimum value
*/ 
unsigned char find_minimum(unsigned char* data, unsigned int length);

/*  This function takes an Unsigned character data and length of the array the 
 *   computes it's meanvalue from the given input and returns it
 *   @param unsigned character
 *   @param return the mean value

*/

unsigned char find_mean(unsigned char* data, unsigned int length);
/* This function takes an Unsigned character data and length of the array  from the sorted array function and then the computes it's Median value from the given input and returns it
@param unsigned character
@param return the median value

*/

unsigned char find_median(unsigned char* data, unsigned int length);

/*  This function takes includes the functions that return mean , median , max and mean .
 *   It accepst usigned char data and length of the array and it will pass them for the functions.
 *  once the function return it wil print thier response. 
 *   @param print mean , median , max and min

*/
void Print_statstics(unsigned char* data, unsigned int length);
/*
  *This function takes unsigned char and the size of the array and implements bubble sort 
  *algorithm sort them then prints the sorted data
*/
unsigned char* sort_array(unsigned char* data, unsigned int length);


#endif /* __STATS_H__ */
