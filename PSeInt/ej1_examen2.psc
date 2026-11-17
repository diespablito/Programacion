SubProceso borrar_numero_posicion(lista Por Referencia,longitud_lista Por Referencia,posicion)
	Mientras posicion<longitud_lista Hacer
		lista[posicion]<-lista[posicion+1];
		posicion<-posicion+1;
	FinMientras
	longitud_lista<-longitud_lista-1;
FinSubProceso

Proceso ej1_examen2

FinProceso