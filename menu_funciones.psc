
//la introduccion de datos
//un menu con las siguientes opciones:
//insertar un numero en una dimension ordenada de menor a mayor
//borrar un numero en una dimension ordenada de menor a mayor
//borrar un numero en la posicion central

SubProceso tamano <- leer_datos ( lista Por Referencia )
	definir tamano Como Entero;
	Definir  entrada Como Entero;
	Definir  i Como Entero;
	i<-0;
	leer entrada;
	mientras entrada <> 0 Hacer
		lista[i]<-entrada;
		i<-i+1;
		leer entrada;
	FinMientras
	tamano<-i-1;
FinSubProceso

SubProceso insertar_ordenado ( lista Por Referencia,tamano Por Referencia,num )
	definir i Como Entero;
	definir encontrado Como Logico;
	definir tamanoaux Como Entero;
	tamanoaux<-tamano;
	encontrado<-Falso;
	i<-0;
	Mientras i<=tamano y no encontrado Hacer
		si lista[i] >= num Entonces
			encontrado<-Verdadero;
			i<-i-1;
		FinSi
		i<-i+1;
	FinMientras
	si encontrado Entonces
		mientras i<=tamanoaux Hacer
			lista[tamanoaux+1]<-lista[tamanoaux];
			tamanoaux<-tamanoaux-1;
		FinMientras
		lista[i]<-num;
		tamano<-tamano+1;
	SiNo
		lista[tamano+1]<-num;
		tamano<-tamano+1;
	FinSi
	
	si tamano<0 Entonces
		lista[0]<-num;
		tamano<-0;
	FinSi
FinSubProceso

SubProceso borrar_ordenado ( lista Por Referencia,tamano Por Referencia,num )
	Definir  i Como Entero;
	definir encontrado como logico;
	encontrado<-Falso;
	i<-0;
	Mientras i<=tamano y no encontrado Hacer
		si lista[i]=num Entonces
			encontrado<-Verdadero;
		SiNo
			i<-i+1;
		FinSi
	FinMientras
	si encontrado Entonces
		mientras i<tamano Hacer
			lista[i]<-lista[i+1];
			i<-i+1;
		FinMientras
		tamano<-tamano-1;
	FinSi
FinSubProceso

SubProceso borrar_valor_central ( lista Por Referencia,tamano Por Referencia )
	Definir posicion Como Entero;
	posicion<-redon(tamano/2);
	Mientras posicion<tamano Hacer
		lista[posicion]<-lista[posicion+1];
		posicion<-posicion+1;
	FinMientras
	tamano<-tamano-1;
FinSubProceso

SubProceso mostrar_datos ( lista,tamano )
	definir i Como Entero;
	para i<-0 hasta tamano Con Paso 1 Hacer
		escribir lista[i];
	FinPara
FinSubProceso

Proceso menu_funciones
	dimension listanumeros[50];
	definir listanumeros Como Entero;
	definir entrada Como Entero;
	definir eleccion Como Entero;
	Definir tamano Como Entero;
	
	tamano<-leer_datos(listanumeros);
	
	Repetir
		escribir "============MENU============";
		escribir "1. Insertar numero";
		escribir "2. Borrar numero";
		escribir "3. Borrar numero en la posicion central";
		escribir "4. Mostrar datos";
		escribir "5. Salir";
		leer eleccion;
		segun eleccion hacer
			1:
				Escribir "Introduce un numero para insertar";
				leer entrada;
				insertar_ordenado(listanumeros,tamano,entrada);
			2:
				Escribir "Introduce un numero para borrar";
				leer entrada;
				borrar_ordenado(listanumeros,tamano,entrada);
			3:
				borrar_valor_central(listanumeros,tamano);
			4:
				mostrar_datos(listanumeros,tamano);
		FinSegun
	Hasta Que  eleccion = 5;
	
FinProceso
