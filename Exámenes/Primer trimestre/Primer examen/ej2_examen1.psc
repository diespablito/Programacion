//Pregunta 2. Dada una lista de números, almacenados en una dimensión. Se pide
//realizar un programa en PSeInt que me devuelva aquel número cuyo cuadrado es
//igual a 81 y se termine el programa, o sino existe que me muestre un mensaje
//diciendo que no existe ningún número con esa condición. (5 puntos)

Proceso ej2_examen1
	Dimension listanumeros[50];
	Definir listanumeros Como Entero;
	Definir entrada Como Entero;
	Definir indice Como Entero;
	Definir tamano Como Entero;

	indice <- 0;

	escribir "introduce datos o escribe 0";
	leer entrada;
	mientras entrada <> 0 Hacer
		listanumeros[indice]<-entrada;
		indice<-indice+1;
		escribir "introduce datos o escribe 0";
		leer entrada;
	FinMientras
	tamano<-indice-1;
	indice<-0;

	Mientras indice<=tamano y listanumeros[indice]^2 <> 81 Hacer // listanumeros[indice]^2 es lo mismo que listanumeros[indice]*listanumeros[indice], ^ es el simbolo de elevado
		indice<-indice+1;
	FinMientras
	Si indice>tamano Entonces
		Escribir "No hay ningun numero cuyo cuadrado sea 81 en la lista.";
	SiNo
		Escribir "El cuadrado de ",listanumeros[indice]," es 81.";
	FinSi
FinProceso