
// 1. -Dada unal ista de palabras me piden decir las palabras que son igual a una dada

// 3. -Dado una lista de palabras realizar un programa que me diga en que psiciones se encuentra una palabra dada por el usuario

Proceso sin_titulo
	dimension listapalabras[50];
	definir listapalabras,entrada como cadena;
	definir indice,tamano,contador Como Entero;

	indice <- 0;
	
	escribir "dame la palabra o escribe terminar";
	leer entrada;
	
	mientras entrada <> "terminar" Hacer
		
		listapalabras[indice]<-entrada;
		
		indice <- indice + 1;
		
		escribir "dame la palabra o escribe terminar";
		leer entrada;
		
	FinMientras
	
	tamano<-indice-1;
	indice<-0;
	contador<-0;
	escribir "introduzca una palabra para buscar";
	leer entrada;
	
	mientras indice <= tamano Hacer

		si entrada = listapalabras[indice] entonces
			Escribir entrada," coincide con ",listapalabras[indice]," en la posicion ",indice;
			contador<-contador+1;
		FinSi
		
		indice <- indice + 1;
		
	FinMientras
	
	
	Escribir "la palabra buscada se ha repetido ",contador," veces";

FinProceso
