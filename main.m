%addpath('punto 1');
addpath('punto 2\sistemas');
addpath('punto 1\sistemas');
while true
    choice = input('Men�: \n0)Salir \nEjercicio 1:\n 1)Graficar senial.m y su TFTD \n 2)Sistema 1: Graficar las respuestas impulsionales y en frecuencia (analitica y obtenidas en MATLAB)\n 3)Sistema 2: Graficar las respuestas impulsionales y en frecuencia (analitica y obtenidas en MATLAB)\n 4)Sistema 3: Graficar las respuestas impulsionales y en frecuencia (analitica y obtenidas en MATLAB)\n 5)Sistema 4: Graficar las respuestas impulsionales y en frecuencia (analitica y obtenidas en MATLAB)\n 6)Graficar se�ales de salida del ejercicio 1 inciso 4\n 7)Graficar TFTDs del ejercicio 1 inciso 5\nEjercicio 2:\n 8) Graficar respuesta impulsional obtenida por hcanald.m y la obtenida mediante la ecuacion en diferencias\n 9) Graficar la se�al de entrada x y su salida y del inciso 3. Reproducir audio de la se�al de salida y\n 10) Graficar la respuesta impulsional de cada cascada(canal+filtro) del inciso 4\n 11)Graficar la se�al filtrada con el filtro de 2 ramas y escuchar como suena \n 12) Graficar la se�al filtrada con el filtro de 3 ramas y escuchar como suena\n 13) Graficar se�al original x junto con la se�al obtenida de los 2 filtros\n');

    
    switch choice
        case 0
            break;
        case 1
            disp('Ejecutando 1)\n');
            ejer1_1;
        case 2
            disp('Ejecutando 2)\n');
            ejer1_3_1;
        case 3
            disp('Ejecutando 3)\n');
            ejer1_3_2;
        case 4
            disp('Ejecutando 4)\n');
            ejer1_3_3;
        case 5
            disp('Ejecutando 5)\n');
            ejer1_3_4;
        case 6
            disp('Ejecutando 6)\n');
            ejer1_4;
        case 7
            disp('Ejecutando 7)\n');
            ejer1_5;
        case 8
            disp('Ejecutando 8)\n');
            punto2_1;
        case 9
            disp('Ejecutando 9)\n');
            punto2_3;
        case 10
            disp('Ejecutando 10)\n');
            punto2_4;
        case 11
            disp('Ejecutando 11)\n');
            punto2_5_filtro2;
        case 12
            disp('Ejecutando 12)\n');
            punto2_5_filtro3;
        case 13
            disp('Ejecutando 13)\n');
            punto2_5_grafico;
        otherwise
            disp('Opci�n no v�lida. No se ejecuta ning�n script.\n');
    end
end