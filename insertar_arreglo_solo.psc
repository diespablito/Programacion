Proceso sin_titulo
	// inserta un dato en una dimension (donde se pide dato a insertar y la posicion donde insertar, teniendo en cuenta que un dato puede : numeros, texto,objetos,etc
	dimension arreglo[50];
	definir arreglo como cadena;
	definir longitud_datos como entero;
	definir entrada como cadena;
	definir posicion como entero;
	definir indice como entero;
	definir longitud_total como entero;
	indice<-0;
	
	escribir "Dame las palabras ";
	leer entrada;
	indice<-0;
	mientras entrada<>"0" hacer
		arreglo[indice]<-entrada;
		escribir "Dame las siguientes palabras o 0 para terminar ";
		leer entrada;
		indice<-indice+1;
	FinMientras
	longitud_datos<-indice-1;
	
	
	escribir "Dame el dato a insertar ";
	leer entrada;
	escribir "Dame la posicion donde hay que insertar el dato ";
	leer posicion;
	longitud_total<-longitud_datos;
	mientras posicion<=longitud_datos Hacer
		arreglo[longitud_datos+1]<-arreglo[longitud_datos];
		longitud_datos<-longitud_datos-1;
	FinMientras
	arreglo[posicion]<-entrada;
	longitud_datos<-longitud_total+1;
	
	indice<-0;
	mientras indice<=longitud_datos Hacer
		escribir arreglo[indice];
		indice<-indice+1;
	FinMientras
	
	
	
FinProceso
