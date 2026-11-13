Proceso sin_titulo
	// inserta un dato en una dimension ordenada
	dimension arreglo[50];
	definir arreglo como cadena;
	definir longitud_datos como entero;
	definir entrada como cadena;
	definir posicion como entero;
	definir indice como entero;
	definir longitud_total como entero;
	definir encontrado como logico;
	
	indice<-0;
	encontrado<-falso;
	
	escribir "Dame los datos";
	leer entrada;
	indice<-0;
	mientras entrada<>"0" hacer
		arreglo[indice]<-entrada;
		escribir "Dame los siguientes datos o 0 para terminar ";
		leer entrada;
		indice<-indice+1;
	FinMientras
	longitud_datos<-indice-1;
	indice<-0;
	
	escribir "Dame el dato a insertar ";
	leer entrada;
	
	Mientras indice<=longitud_datos y no encontrado Hacer
		si entrada<arreglo[indice] entonces
			posicion<-indice;
			encontrado<-Verdadero;
		FinSi
		indice<-indice+1;
	FinMientras
	
	si encontrado Entonces
		longitud_total<-longitud_datos;
		mientras posicion<=longitud_datos Hacer
			arreglo[longitud_datos+1]<-arreglo[longitud_datos];
			longitud_datos<-longitud_datos-1;
		FinMientras
		arreglo[posicion]<-entrada;
		longitud_datos<-longitud_total+1;
	SiNo
		arreglo[longitud_datos+1]<-entrada;
		longitud_datos<-longitud_datos+1;
	FinSi
	
	
	indice<-0;
	mientras indice<=longitud_datos Hacer
		escribir arreglo[indice];
		indice<-indice+1;
	FinMientras
	
	
	
FinProceso