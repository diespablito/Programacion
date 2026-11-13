Algoritmo sin_titulo
	definir respuesta,entrada,opcion1,opcion2,opcion3,opcion4 como cadena;
	definir eleccion Como Caracter;
	definir opcion5 como entero;
	
	// crear una dimension (array) con los valores de las opciones pregunta y respuesta
	
	
	Repetir
		escribir "dame la pregunta";
		leer entrada;
		escribir "dame la respuesta";
		leer respuesta;
		escribir "dame la primera opcion de respuesta";
		leer opcion1;
		escribir "dame la segunda opcion de respuesta";
		leer opcion2;
		escribir "dame la tercera opcion de respuesta";
		leer opcion3;
		escribir "dame la cuarta opcion de respuesta";
		leer opcion4;
		escribir "dame la opcion que usted cree que es verdadera";
		leer opcion5;
		Segun opcion5 Hacer
			1:
				si respuesta = opcion1 Entonces
						escribir "La opción 1 era correcta, ha sumado 1 punto";
				FinSi
			2:
				si respuesta = opcion2 Entonces
					escribir "La opción 2 era correcta, ha sumado 1 punto";
				FinSi
			3:
				si respuesta = opcion3 Entonces
					escribir "La opción 3 era correcta, ha sumado 1 punto";
				FinSi
			4:
				si respuesta = opcion4 Entonces
					escribir "La opción 4 era correcta, ha sumado 1 punto";
				FinSi
		FinSegun
		escribir "¿Quiere continuar? (s/n)";
		leer eleccion;
	Hasta Que eleccion = "n"
		
FinAlgoritmo



	