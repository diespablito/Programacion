Algoritmo adivina_numero
	definir num, intentos, numcorrecto, intentosrestantes Como Entero;
	definir adivinado Como Logico;
	
	adivinado <- falso;
	numcorrecto <- 7;
	intentos <- 0;
	
	escribir "estoy pensando en un numero.. intenta adivinarlo. Tienes 5 intentos";
	leer num;
	
	mientras num <> 0 y no adivinado y 1+intentos <> 5 Hacer
		
		si num = numcorrecto Entonces
			adivinado <- verdadero;
		SiNo
			escribir "Respuesta incorrecta, prueba de nuevo o escriba 0 para salir. (",5-intentos," intento(s) restantes)";
			leer num;
		FinSi
		intentos <- intentos + 1;
	FinMientras
	
	si adivinado = verdadero Entonces
		
		Segun intentos Hacer
			1:
				escribir "eres un genio!";
			2:
				escribir "que listo que eres!";
			3:
				escribir "A la tercera va la vencida";
			De Otro Modo:
				escribir "te ha costado un poco..";
		FinSegun
		
		escribir "mi numero era ",numcorrecto," y lo adivinaste en ",intentos," intento(s).";
		
	SiNo
		
		escribir "buena suerte la proxima vez";
		Escribir "mensaje";
	FinSi
	
FinAlgoritmo
