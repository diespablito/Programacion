Algoritmo trivia
	definir intentos, intentosrestantes Como Entero;
	definir palabra, palabracorrecta Como Caracter;
	definir adivinado Como Logico;
	
	adivinado <- falso;
	palabracorrecta <- "patata";
	intentos <- 0;
	
	escribir "estoy pensando en una palabra.. intenta adivinarla. Tienes 5 intentos";
	leer palabra;
	
	mientras no adivinado y 1+intentos <> 5 y palabra <> "0" Hacer
		
		si Minusculas(palabra) = palabracorrecta Entonces
			adivinado <- verdadero;
		SiNo
			escribir "Respuesta incorrecta, prueba de nuevo o escriba 0 para salir. (",5-intentos," intento(s) restantes)";
			leer text;
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
		
		escribir "mi palabra era ",palabracorrecta," y la adivinaste en ",intentos," intento(s).";
		
		
	SiNo
		
		escribir "buena suerte la proxima vez";
		
	FinSi
	
FinAlgoritmo
