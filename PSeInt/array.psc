Proceso sin_titulo
	dimension nums[40];
	definir nums,indice,entrada,salida como entero;
	definir valoresfinales como cadena;
	indice <- 0;
	escribir "dame numeros";
	leer entrada;
	mientras entrada <> 0 Hacer

		nums[indice]<-entrada;
		indice<-indice+1; 
		escribir "dame mas numeros o 0 para terminar";
		leer entrada;
	FinMientras
	salida<-0;
	
	mientras salida < indice Hacer
		
		escribir "el valor almacenado en dimension es ",nums[salida];
		
		salida<-salida+1;
	FinMientras
FinProceso
