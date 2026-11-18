// Dada una dimension de numeros y valor determinado, me piden realizar una funcion que me devuelva la posicion donde esta ese valor determinado. (Solo la primera)

SubProceso posicion <- buscar_numeros_posicion(lista,longitud_lista,dato)
	Definir posicion Como Entero;
	Definir indice Como Entero;
	
	indice<-0;
	
	Mientras indice<=longitud_lista y lista[indice]<>dato Hacer
		indice<-indice+1;
	FinMientras

	si indice>longitud_lista Entonces
		posicion<--1;
	SiNo
		posicion<-indice;
	FinSi

FinSubProceso

//Dada una dimension de numeros y un numero determinado. Se pide:
//realizar una funcion que me devuelva las posiciones donde se encuentra el numero determinado
//en la funcion se debe poner los parametros formales y si la funcion devuelve algun valor

SubProceso longitud_posiciones <- posiciones_dado_un_numero(lista,longitud_lista,dato,listaposiciones Por Referencia)
	Definir longitud_posiciones Como Entero;
	Definir indice Como Entero;
	Definir indice_posiciones Como Entero;

	indice<-0;
	indice_posiciones<-0;

	Mientras indice<=longitud_lista Hacer
		Si dato=lista[indice] Entonces
			listaposiciones[indice_posiciones]<-indice;
			indice_posiciones<-indice_posiciones+1;
		FinSi
		indice<-indice+1;
	FinMientras
	longitud_posiciones<-indice_posiciones-1;
FinSubProceso

Proceso buscar_posicion_de_dato

FinProceso

