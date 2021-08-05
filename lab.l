%{
	#include<stdio.h>
	int word = 0;
	int digit=0;
	int word_digit=0;
%}

%%
[a-zA-Z]+ {word++;} 						
[0-9]+ {digit++;}							
[a-zA-Z0-9]+ {word_digit++;} 
[\n]  {return 0;}  
%%

int yywrap()								
{
	return 1;
}


int main(void)
{
	printf("Enter String \n");
	yylex();
	printf("Number of words containing only letters: %d", word);
	printf("Number of Words containing only digits: %d", digit);
	printf("Number of Words containing mixture of letters and digits: %d", word_digit);

	return 0;
}
