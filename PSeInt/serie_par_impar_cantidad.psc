Algoritmo sin_titulo
	definir num, numpar, numimpar Como Entero
	num <- 1;
	numpar <- 0;
	numimpar <- 0;
	
	
	Mientras num <> 0 Hacer
		escribir "dame el numero, escriba 0 para terminar"
		leer num
		

		si num no es 0 entonces
			si num%2=0 Entonces
				numpar =numpar + 1;
				escribir num," es par";
			SiNo
				numimpar =numimpar + 1;
				escribir num," es impar";
			FinSi
		FinSi
	
	FinMientras
	escribir "numeros pares: ",numpar,", numeros impares: ",numimpar;
FinAlgoritmo
