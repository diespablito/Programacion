//un menu con las siguientes opcones entrada de datos leer los datos a la inversa borrar el dato introducido

Proceso sin_titulo
	dimension listanumeros[50];
	definir listanumeros,entrada,indice,tamano,contador,recorrer2,posicionencontrado como entero;
	definir eleccion3 Como Caracter;
	definir encontrado como logico;
	
	encontrado<-falso;
	indice <- 0;
	tamano <- 0;
	
	repetir
	escribir "<--------MENU-------->";
	escribir "1. Introducir datos";
	escribir "2. Leer datos a la inversa";
	escribir "3. Borrar dato";
	escribir "4. Salir";
	
	leer entrada;
	
	Segun entrada Hacer
		1:
			escribir "introduzca un dato o escriba 0 para volver";
			leer entrada;
			mientras entrada <> 0 Hacer
				
				listanumeros[indice]<-entrada;
				
				indice <- indice + 1;
				
				escribir "introduzca un dato o escriba 0 para volver";
				leer entrada;
				
			FinMientras
			tamano <- indice-1;
			indice <- 0;
		2:
			recorrer2<-tamano; 
			si recorrer2 <> 0 Entonces
				mientras 0 <= recorrer2 Hacer
					escribir listanumeros[recorrer2];
					recorrer2<-recorrer2-1;
				FinMientras
			SiNo
				escribir "No introdujo ningun valor en la lista, use la opcion 1 para introducir valores";
			FinSi

		3:
			si tamano <> 0 Entonces
				escribir "introduzca un dato para borrar o escriba 0 para volver";
				leer entrada;
				mientras entrada <> 0 y no encontrado y indice<=tamano Hacer
					si listanumeros[indice] = entrada Entonces
						encontrado<-Verdadero;
						posicionencontrado<-indice;
					FinSi
					indice<-indice+1;
				FinMientras
				si encontrado Entonces
					mientras posicionencontrado <= tamano Hacer
						
						si no posicionencontrado+1>tamano Entonces
							listanumeros[posicionencontrado]<-listanumeros[posicionencontrado+1];
						FinSi
						
						posicionencontrado<-posicionencontrado+1;
						
					FinMientras
					tamano<-tamano-1;
					entrada<-0;
				SiNo
					escribir "Numero no encontrado en la lista";
				FinSi
			SiNo
				escribir "No introdujo ningun valor en la lista, use la opcion 1 para introducir valores";
			FinSi
			
	FinSegun
	
	hasta que entrada = 4
	
FinProceso