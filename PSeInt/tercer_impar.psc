Algoritmo sin_titulo
	definir num,contador,objetivo Como Entero;
	definir encontrado Como Logico;
	encontrado <- falso;
	contador <- 0;
	
	escribir "dame el numero, escriba 0 para terminar";
	leer num;
	Mientras num <> 0 y no encontrado Hacer
		
		si num%2<>0 Entonces
			contador <- contador + 1;
		FinSi
		
		si contador = 3 Entonces
			encontrado <- Verdadero;
			objetivo <- num;
		SiNo
			escribir "dame el numero, escriba 0 para terminar";
			leer num;
		FinSi

	FinMientras
	Si encontrado Entonces
		Escribir "el ",contador,"� numero impar que escribiste fue: ",objetivo;
	SiNo
		Escribir "no escribiste ningun numero impar o no llegaste a escribir 3";
	FinSi
FinAlgoritmo
