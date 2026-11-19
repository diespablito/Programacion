//Funcion o funciones que te devuelven una lista con los numeros primos que hay entre 0 y 100

SubProceso esprimo <- comprobar_numero_primo(num)
	definir esprimo Como Logico;
	definir divisor Como Entero;
	Definir encontrado Como Logico;
	encontrado<-falso;
	esprimo<-falso;
	divisor<-num;
	Mientras 1<=divisor Hacer
		si divisor <> num y divisor <> 1 Entonces
			si num%divisor=0 Entonces
				encontrado<-Verdadero;
			FinSi
		FinSi
		divisor<-divisor-1;
	FinMientras
	si no encontrado Entonces
		esprimo<-Verdadero;
	FinSi
FinSubProceso

SubProceso longitud_primos <- numeros_primos_de_0_al_100(primos)
	definir longitud_primos Como Entero;
	definir indice Como Entero;
	definir esprimo Como Logico;
	definir indice_primos Como Entero;
	indice<-0;
	indice_primos<-0;
	mientras indice<=100 Hacer
		esprimo<-comprobar_numero_primo(indice);
		si esprimo Entonces
			primos[indice_primos]<-indice;
			indice_primos<-indice_primos+1;
		FinSi
		indice<-indice+1;
	FinMientras
	longitud_primos<-indice_primos-1;
FinSubProceso

SubProceso mostrar_datos(lista,tamano)
	definir indice Como Entero;
	Para indice<-0 hasta tamano con paso 1 Hacer
		Escribir lista[indice];
	FinPara
FinSubProceso

Proceso primos_entre_0_y_100
	Dimension primos[100];
	definir primos Como Entero;
	definir tamano Como Entero;
	tamano<-numeros_primos_de_0_al_100(primos);
	mostrar_datos(primos,tamano);
FinProceso
