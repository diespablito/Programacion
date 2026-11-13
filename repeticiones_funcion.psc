// resultado.- Contiene las palabras sin Repetir
// cantidadd.- Contiene las repeticiones de las palabras 
// dato.- La palabra que se tratar
//longitud_resultado.- Es valor de la cantidad que contiene resultado
SubProceso repeticiones( resultado por referencia,cantidad Por Referencia,dato,tamanoresultado Por Referencia )
	// se elige el elemento que esté en la dimensión principal
	definir i como entero; // i.- me recorre la dimension resultado
	
	si tamanoresultado==0 Entonces
		resultado[tamanoresultado]<-dato;
		cantidad[tamanoresultado]<-1;
		tamanoresultado<-tamanoresultado+1;
	SiNo
		i<-0;
		// Busca si la palabra esta en la dimension resultado o es nueva
		mientras i<tamanoresultado y resultado[i]<>dato Hacer
			i<-i+1;
		FinMientras
		// Si se cumple la palabra existe, con la cual hay repetici?n
		si i<tamanoresultado Entonces
			cantidad[i]<-cantidad[i]+1;
			// la palabra no existe	
		SiNo
			resultado[i]<-dato;
			tamanoresultado<-i+1;
			cantidad[i]<-1;
		FinSi
		
	FinSi
	
	
FinSubProceso

SubProceso  salida_resultado ( resultado Por Referencia, cantidad Por Referencia, tamano )
	definir i como entero;
	Escribir "======REPETICIONES======";
	Para i<-0 Hasta tamano Con Paso 1 Hacer
		Escribir resultado[i],": ",cantidad[i];
	FinPara
FinSubProceso

SubProceso tamano <- entrada_datos ( lista Por Referencia )
	definir tamano como entero;
	definir entrada como cadena;
	definir i como entero;
	escribir "Dame las palabras de la lista ";
	leer entrada;
	i<-0;
	mientras entrada<>"0" Hacer
		lista[i]<-entrada;
		i<-i+1;
		escribir "Dame la siguiente palabra o 0 para terminar ";
		leer entrada;
	FinMientras
	tamano<-i-1;
	
	
FinSubProceso

Proceso sin_titulo
	dimension resultado[50]; // resultado .- Contiene las palabras sin repetir
	dimension cantidad[50]; // cantidad.- Contiene las repeticiones de las palabras
	dimension lista[50]; // lista.- Son los datos a tratar
	definir lista, resultado, dato como cadena;
	definir cantidad, i, i2, tamano como entero;
	
	i<-0;
	i2<-0;
	
	tamano<-entrada_datos(lista);
	
	mientras i<=tamano Hacer
		dato<-lista[i];
		repeticiones(resultado,cantidad,dato,i2);
		i<-i+1;
		
	FinMientras
	salida_resultado(resultado,cantidad,i2-1);
FinProceso