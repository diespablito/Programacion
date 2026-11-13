Algoritmo sin_titulo
	
	dimension preguntas[50],opciones1[50],opciones2[50],opciones3[50],opciones4[50],respuestas[50],respuestascorrectas[50];
	
	definir respuesta,preguntas,respuestascorrectas,opciones1,opciones2,opciones3,opciones4 como cadena;
	definir eleccion,eleccion2 Como Caracter;
	definir opcion5,entrada,indice,tamano,respuestas como entero;
	
	indice <- 0;
	
	
	escribir "Comenzar? (s/n)";
	leer eleccion;
	mientras eleccion <> "n" Hacer
		
		escribir "dame la pregunta";
		leer preguntas[indice];
		
		escribir "dame la respuesta";
		leer respuestascorrectas[indice];
		
		escribir "dame la primera opcion de respuesta";
		leer opciones1[indice];
		
		escribir "dame la segunda opcion de respuesta";
		leer opciones2[indice];
		
		escribir "dame la tercera opcion de respuesta";
		leer opciones3[indice];
		
		escribir "dame la cuarta opcion de respuesta";
		leer opciones4[indice];
		
		indice <- indice + 1;
		
		escribir "¿Crear otra pregunta? (s/n)";
		leer eleccion;
		
	FinMientras
	
	
	tamano<-indice-1;
	
	Mientras eleccion2 <> "n" Hacer
		
	escribir "introduzca el numero de pregunta que quiera";
	leer entrada;
	
	si entrada > 0 y entrada < tamano Entonces
	
	Escribir preguntas[entrada];
	Escribir opciones1[entrada];
	Escribir opciones2[entrada];
	Escribir opciones3[entrada];
	Escribir opciones4[entrada];
	
	escribir "dame la opcion que usted cree que es verdadera";
	leer respuestas[entrada];
	
	Segun respuestas[entrada] Hacer
		
		1:
			si respuestascorrectas[entrada] = opciones1[entrada] Entonces
				escribir "La opción 1 era correcta, ha sumado 1 punto";
			SiNo
				escribir "incorrecto, la respuesta correcta era: ",respuesta;
			FinSi
			
		2:
			si respuestascorrectas[entrada] = opciones2[entrada] Entonces
				escribir "La opción 2 era correcta, ha sumado 1 punto";
			SiNo
				escribir "incorrecto, la respuesta correcta era: ",respuesta;
			FinSi
			
		3:
			si respuestascorrectas[entrada] = opciones3[entrada] Entonces
				escribir "La opción 3 era correcta, ha sumado 1 punto";
			SiNo
				escribir "incorrecto, la respuesta correcta era: ",respuesta;
			FinSi
			
		4:
			si respuestascorrectas[entrada] = opciones4[entrada] Entonces
				escribir "La opción 4 era correcta, ha sumado 1 punto";
			SiNo
				escribir "incorrecto, la respuesta correcta era: ",respuesta;
			FinSi
			
	FinSegun
	
	FinSi

	escribir "quieres responder otra pergunta? (s/n)";
	leer eleccion2;
	
	FinMientras

FinAlgoritmo






	