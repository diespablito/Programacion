//un menu con las siguientes opcones entrada de datos leer los datos a la inversa borrar el dato introducido

Proceso sin_titulo
	dimension lista[50];
	definir indice,tamano,contador,recorrer2,posicionencontrado,longitud_total,posicioninicial,posicion como entero;
	definir entrada como cadena;
	definir lista como cadena;
	definir eleccion3 Como Caracter;
	definir encontrado como logico;
	
	encontrado<-falso;
	indice <- 0;
	tamano <- 0;
	
//	escribir "introduzca un dato o escriba terminar";
//	leer entrada;
//	mientras entrada <> "terminar" Hacer
//		
//		lista[indice]<-entrada;
//		
//		indice <- indice + 1;
//		
//		escribir "introduzca un dato o escriba 0 para volver";
//		leer entrada;
//		
//	FinMientras
//	tamano <- indice-1;
	
	
	repetir
	escribir "<--------MENU-------->";
	escribir "1. Introducir datos";
	escribir "2. Leer datos";
	escribir "3. Leer datos a la inversa";
	escribir "4. Borrar dato";
	escribir "5. Insertar dato";
	escribir "6. Salir";
	
	leer entrada;
	
	Segun ConvertirANumero(entrada) Hacer
		1:
			escribir "introduzca un dato o escriba 0 para volver";
			leer entrada;
			mientras entrada <> "0" Hacer
				
				lista[indice]<-entrada;
				
				indice <- indice + 1;
				
				escribir "introduzca un dato o escriba 0 para volver";
				leer entrada;
				
			FinMientras
			tamano <- indice-1;
			indice <- 0;
			
			
		2:
			
			mientras indice <= tamano Hacer
				escribir lista[indice];
				indice<-indice+1;
			FinMientras
			indice<-0;
			
		
		3:
			recorrer2<-tamano; 
			
			mientras 0 <= recorrer2 Hacer
				escribir lista[recorrer2];
				recorrer2<-recorrer2-1;
			FinMientras
			
			
		4:
			
			escribir "introduzca un dato para borrar";
			leer entrada;
			mientras entrada <> "terminar" y no encontrado y indice<=tamano Hacer
				si lista[indice] = entrada Entonces
					encontrado<-Verdadero;
					posicionencontrado<-indice;
				FinSi
				indice<-indice+1;
			FinMientras
			si encontrado Entonces
				mientras posicionencontrado <= tamano Hacer
					
					si no posicionencontrado+1>tamano Entonces
						lista[posicionencontrado]<-lista[posicionencontrado+1];
					FinSi
					
					posicionencontrado<-posicionencontrado+1;
					
				FinMientras
				tamano<-tamano-1;
				entrada<-"";
			SiNo
				escribir "Numero no encontrado en la lista";
			FinSi
			
			
		5:
			escribir "Dame el dato a insertar ";
			leer entrada;
			escribir "Dame la posicion donde hay que insertar el dato ";
			leer posicion;
			longitud_total<-tamano;
			mientras posicion<=tamano Hacer
				lista[tamano+1]<-lista[tamano];
				tamano<-tamano-1;
			FinMientras
			lista[posicion]<-entrada;
			tamano<-longitud_total+1;
			
	FinSegun
	
	hasta que entrada = "6"
	
FinProceso