SubProceso borrar_valor_central ( lista Por Referencia, tamanolista Por Referencia )
	definir indice Como Entero;
	Definir posicion Como Entero;
	indice<-0;
	posicion<-tamanolista%2;
	si posicion <> 0 Entonces
		posicion<-redon(tamanolista/2);
		escribir "la posicion es ",posicion;
		Mientras posicion<tamanolista Hacer
			lista[posicion]<-lista[posicion+1];
			posicion<-posicion+1;
		FinMientras
		tamanolista<-tamanolista-1;
	SiNo
		posicion<-redon(tamanolista/2);
		escribir "la posicion es ",posicion;
		Mientras posicion<tamanolista Hacer
			lista[posicion]<-lista[posicion+1];
			posicion<-posicion+1;
		FinMientras
		tamanolista<-tamanolista-1;
	FinSi
FinSubProceso

SubProceso tamano <- leer_entrada ( lista Por Referencia )
	definir tamano Como Entero;
	definir entrada Como Entero;
	definir indice Como Entero;
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

Proceso sin_titulo
	Dimension listanumeros[50];
	definir listanumeros Como Entero;
	definir tamano Como Entero;
	tamano<-leer_entrada(listanumeros);
	borrar_valor_central(listanumeros,tamano);
	escribir_salida(listanumeros,tamano);
FinProceso
