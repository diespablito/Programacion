SubProceso longitud_final <- insertar_numero_dimension_ordenada(lista Por Referencia, longitud_lista, dato)
	Definir longitud_final Como Entero;
	Definir indice Como Entero;
	Definir posicion Como Entero;
	indice<-0
	longitud_final<-longitud_lista
	Mientras indice<=longitud_lista y lista[indice]<dato Hacer
		indice<-indice+1;
	FinMientras
	Si indice>longitud_lista Entonces
		lista[indice+1]<-dato;	
	SiNo
		posicion<-indice
		Mientras posicion<=longitud_lista Hacer
			lista[longitud_lista+1]<-lista[longitud_lista];
			longitud_lista<-longitud_lista-1;
		FinMientras
		longitud_final<-longitud_final+1;
	FinSi
FinSubProceso

Proceso sin_titulo

FinProceso