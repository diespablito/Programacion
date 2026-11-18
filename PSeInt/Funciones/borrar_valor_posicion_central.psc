SubProceso borrar_valor ( lista Por Referencia, tamanolista Por Referencia )
	Definir  posicion Como Entero;
	posicion<-redon(tamanolista/2);
	Mientras posicion<tamanolista Hacer
		lista[posicion]<-lista[posicion+1];
		posicion<-posicion+1;
	FinMientras
	tamanolista<-tamanolista-1;
FinSubProceso

SubProceso tamano <- leer_entrada ( lista Por Referencia )
	definir tamano Como Entero;
	Definir  entrada Como Entero;
	Definir  indice Como Entero;
	indice<-0;
	leer entrada;
	mientras entrada <> 0 Hacer
		lista[indice]<-entrada;
		indice<-indice+1;
		leer entrada;
	FinMientras
	tamano<-indice-1;
FinSubProceso

SubProceso escribir_salida ( lista, tamano )
Definir  indice Como Entero;
	para indice<-0 hasta tamano Hacer
		escribir lista[indice];
	FinPara
FinSubProceso


//Dada una lista de numeros borrar el numero que esta en la posicion central
Proceso sin_titulo
	dimension listanumeros[50];
	Definir  listanumeros Como Entero;
	definir tamano Como Entero;
	
	
	tamano<-leer_entrada(listanumeros);
	borrar_valor(listanumeros,tamano);
	escribir_salida(listanumeros,tamano);
	
	
	
FinProceso
