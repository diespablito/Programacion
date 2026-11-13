Proceso sin_titulo
	dimension dimension1[30];
	definir dimension1,maximo,indice,tamano,entrada como entero;
	indice<-0;maximo<-0;
	escribir "dame numeros";
	leer entrada;
	
	mientras entrada <> 0 Hacer
		dimension1[indice] <- entrada;
		si maximo < dimension1[indice] Entonces
			maximo<-dimension1[indice];
		FinSi
		indice<-1+indice;
		escribir "dame mas numeros";
		leer entrada;
	FinMientras
	escribir "el numero mas grande que introduciste fue: ",maximo;
	
	
FinProceso
