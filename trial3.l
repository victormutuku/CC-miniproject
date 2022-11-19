%{
 
/*
1.Request input of an even and an odd number
2.indicate input characteristic : Even/Odd
3.check for input's correctness and print result
*/
 
#include <stdlib.h>
#include <stdio.h>
 
int num;
// int number_2;
 
%}
  
 
%%
[0-9]  {return atoi(yytext);}
[A-Za-z] {printf("Character %s not a number", yytext);}

%%
 
int yywrap()
{
  return 1;
}
 
int main()
{
  printf("\nEven/Odd Square:\n");
  num = yylex();
//   number_2 = yylex();
  int sqr = num * num;
  if(sqr%2==0)
    printf("Square is an even number");
  else
    printf("Square is an odd number");
  return 1;
}