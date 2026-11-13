SubProceso tamano <- leer_datos ( lista Por Referencia )
	definir tamano Como Entero;
	definir indice Como Entero;
	definir entrada Como Entero;
	indice<-0;
	leer entrada;
	Mientras entrada <> 0 Hacer
		lista[indice]<-entrada;
		indice<-indice+1;
		leer entrada;
	FinMientras
	tamano<-indice-1;
FinSubProceso

SubProceso posicion <- mayor ( lista Por Referencia, tamano )
	definir posicion como entero;
	definir indice como entero;
	definir num,pos como entero;
	indice<-0;
	num<-0;
	
	Mientras indice<=tamano Hacer
		
		si lista[indice]>num Entonces
			num<-lista[indice];
			posicion<-indice;
		FinSi
		indice<-indice+1;
	FinMientras
	
FinSubProceso

Proceso sin_titulo
	dimension listanumeros[50];
	Definir listanumeros Como Entero;
	definir posmayor Como Entero;
	definir tamano,auxtamano,aux Como Entero;
	
	
	tamano <- leer_datos(listanumeros);
	posmayor <- mayor(listanumeros,tamano);
	auxtamano<-tamano;
	mientras auxtamano >= 0 Hacer
		si listanumeros[auxtamano]<listanumeros[auxtamano-1] Entonces
			aux<-listanumeros[auxtamano];
			listanumeros[auxtamano]<-listanumeros[auxtamano-1];
			listanumeros[auxtamano-1]<-aux;
			
		FinSi
		auxtamano<-auxtamano-1;
	FinMientras
	
FinProceso
