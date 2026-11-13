
SubProceso final <- binario ( num )
	definir final como cadena;
	definir resto Como Entero;
	final <- "";
	Si num = 0 Entonces
		final <- "0";
	Sino
		Mientras num > 0 Hacer
			resto<-num%2;
			final <- Concatenar(ConvertirATexto(resto),final);  
			num<-trunc(num/2);
		FinMientras
	FinSi
FinSubProceso

SubProceso final <- octal ( num )
	definir final como cadena;
	definir resto Como Entero;
	final <- "";
	Si num = 0 Entonces
		final <- "0";
	Sino
		Mientras num > 0 Hacer
			resto<-num%8;
			final <- Concatenar(ConvertirATexto(resto),final);  
			num<-trunc(num/8);
		FinMientras
	FinSi
FinSubProceso

SubProceso final <- hexadecimal ( num )
	Definir final Como Texto;
	Definir resto Como Entero;
	Definir letra Como Texto;
	final <- ""; 
	Si num = 0 Entonces
		final <- "0";
	Sino
		Mientras num > 0 Hacer
			resto <- num % 16; 
			Segun resto Hacer
				10: letra <- "A";
				11: letra <- "B";
				12: letra <- "C";
				13: letra <- "D";
				14: letra <- "E";
				15: letra <- "F";
				De Otro Modo:
					letra <- ConvertirATexto(resto); 
			FinSegun
			final <- Concatenar(letra,final); 
			num <- Trunc(num / 16); 
		FinMientras
	FinSi
FinSubProceso

Proceso traductorbinario
	definir entrada Como Entero;
	leer entrada;
	escribir "el numero en binario es ", binario(entrada);
	escribir "el numero en octal es ", octal(entrada);
	escribir "el numero en hexadecimal es ", hexadecimal(entrada);
FinProceso
