Algoritmo adivina_numero
	definir num, intentos, numcorrecto Como Entero;
	definir adivinado Como Logico;
	
	adivinado <- falso;
	numcorrecto <- 7;
	intentos <- 0;
	
	escribir "estoy pensando en un numero.. intenta adivinarlo";
	leer num;
	
	Mientras num != 0 y no adivinado Hacer
		
		intentos <- intentos + 1;
		
		si num = numcorrecto Entonces
			adivinado <- Verdadero;
		SiNo
			escribir "incorrecto, prueba otra vez... o escribe 0 para finalizar";
			leer num;
		FinSi
		
	FinMientras
	
	si adivinado = verdadero Entonces
		
		si intentos = 1 Entonces
			escribir "eres un genio!";
		FinSi
		si intentos = 2 Entonces
			escribir "que listo que eres!";
		FinSi
		si intentos = 3 Entonces
			escribir "A la tercera va la vencida";
		FinSi
		Si intentos > 3 Entonces
			escribir "te ha costado un poco..";
		FinSi
		
		escribir "mi numero era ",numcorrecto," y lo adivinaste en ",intentos," intento(s).";
		
	SiNo
		
		escribir "buena suerte la proxima vez";
		
	FinSi
	
FinAlgoritmo
