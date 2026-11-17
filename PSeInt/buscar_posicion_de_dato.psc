// Dada una dimension de numeros y valor determinado, me piden realizar una funcion que me devuelva la posicion donde esta ese valor determinado. (Solo la primera)

SubProceso tamano <- leer_datos ( lista Por Referencia )
	definir tamano Como Entero;
	Definir entrada Como Entero;
	Definir i Como Entero;
	
	i<-0;
	
	leer entrada;
	mientras entrada != 0 Hacer
		lista[i]<-entrada;
		i<-i+1;
		leer entrada;
	FinMientras

	tamano<-i-1;
	
FinSubProceso

SubProceso posicion <- buscar_numeros_posicion(lista,longitud_lista,dato)
	Definir posicion Como Entero;
	Definir encontrado Como Logico;
	Definir i Como Entero;
	
	i<-0;
	encontrado<-Falso;
	posicion<--1;
	
	Mientras i<=longitud_lista y no encontrado Hacer
		Si dato=lista[i] Entonces
			posicion<-i;
			encontrado<-Verdadero;
		FinSi
		i<-i+1;
	FinMientras
	
FinSubProceso

Proceso buscar_posicion_de_dato
	Dimension lista[50];
	
	Definir posicion Como Entero;
	Definir lista Como Entero;
	Definir tamano Como Entero;
	Definir dato Como Entero;
	
	escribir "dame los datos de la lista y escribe 0 cuando termine";
	tamano<-leer_datos(lista);
	
	escribir "que dato quieres buscar?";
	leer dato;
	posicion<-buscar_numeros_posicion(lista,tamano,dato);
	
	si posicion = -1 Entonces
		Escribir "No se ha encontrado el numero buscado.";
	SiNo
		Escribir "La posicion del numero buscado es: ",posicion;
	FinSi
	
FinProceso