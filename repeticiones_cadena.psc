SubProceso tamano <- leer_datos ( lista Por Referencia )
	definir tamano Como Entero;
	Definir  entrada Como cadena;
	Definir  i Como Entero;
	i<-0;
	leer entrada;
	mientras entrada <> "0" Hacer
		lista[i]<-entrada;
		i<-i+1;
		leer entrada;
	FinMientras
	tamano<-i-1;
FinSubProceso

Proceso sin_titulo
	dimension lista[50],resultado[50],cantidad[50];
	definir lista,resultado,dato como cadena;
	definir cantidad,tamano,i,i2,i3 Como Entero;;
	i<-0;
	i2<-0;
	i3<-0;
	tamano<-leer_datos(lista);
	Mientras i<=tamano Hacer
		dato<-lista[i];
		si i2==0 Entonces
			resultado[i2]<-dato;
			cantidad[i2]<-1;
			i2<-i2+1;
		SiNo
			i3<-0;
			mientras i3<i2 y resultado[i3]<>dato Hacer
				i3<-i3+1;
			FinMientras
			si i3<i2 Entonces
				cantidad[i3]<-cantidad[i3]+1;
			SiNo
				resultado[i3]<-dato;
				i2<-i3+1;
				cantidad[i3]<-1;
			FinSi
		finsi
		i<-i+1;
	FinMientras
	
	escribir "-------REPETICIONES-------";
	para i<-0 Hasta i2-1 con paso 1 Hacer
		escribir resultado[i],": ",cantidad[i];
	FinPara
FinProceso
