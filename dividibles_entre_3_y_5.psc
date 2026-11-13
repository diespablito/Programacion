
// 2. -Dado una lista de numeros decir cual de ellos son divisibles entre 3 y 5

Proceso sin_titulo
	dimension listanumeros[50];
	definir listanumeros,entrada,indice,tamano como entero;
	
	indice <- 0;
	
	escribir "dame el numero o escribe 0 para terminar";
	leer entrada;
	
	mientras entrada <> 0 Hacer
		
		listanumeros[indice]<-entrada;
		
		indice <- indice + 1;
		
		escribir "dame el numero o escribe 0 para terminar";
		leer entrada;
		
	FinMientras
	
	tamano<-indice-1;
	indice<-0;
	
	mientras indice <= tamano Hacer
		
		si listanumeros[indice]%3 = 0 y listanumeros[indice]%5 = 0 entonces
			Escribir listanumeros[indice]," es divisible entre 3 y 5";
		FinSi
		
		indice <- indice + 1;
		
	FinMientras
	
	
FinProceso
