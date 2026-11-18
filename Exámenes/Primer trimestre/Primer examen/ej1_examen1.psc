//Pregunta 1. Dada una lista de palabras almacenadas en una dimensión. Se pide
//realizar un programa en PSeInt que me devuelva en otra dimensión aquellas
//palabras que tienen una longitud de caracteres impares. Deben mostrarse las
//palabras que cumplen esa condición. (5 puntos)

Proceso sin_titulo
	
	dimension listapalabras[50],listaimpar[50];
	definir indice,indiceimpar,tamano,tamanoimpar como entero;
	definir entrada,listapalabras,listaimpar Como cadena;
	
	indice<-0;
	indiceimpar<-0;
	
	escribir "introduce datos o escribe 0";
	leer entrada;
	mientras entrada <> "0" Hacer
		listapalabras[indice]<-entrada;
		indice<-indice+1;
		escribir "introduce datos o escribe 0";
		leer entrada;
	FinMientras
	tamano<-indice-1;
	indice<-0;
	
	mientras indice<=tamano Hacer
		si Longitud(listapalabras[indice])%2 <> 0 Entonces
			listaimpar[indiceimpar]<-listapalabras[indice];
			indiceimpar<-indiceimpar+1;
		FinSi
		indice<-indice+1;
	FinMientras
	tamanoimpar<-indiceimpar-1;
	indice<-0;
	
	mientras indice<=tamanoimpar hacer
		escribir listaimpar[indice];
		indice<-indice+1;
	FinMientras
	
FinProceso
