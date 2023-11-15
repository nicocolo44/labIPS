while true
    choice = input('Menú: \nEjercicio 1:\n 1)Graficar senial.m y su TFTD \n 2)Sistema 1: Graficar las respuestas impulsionales y en frecuencia (analitica y obtenidas en MATLAB)\n 3)Sistema 2: Graficar las respuestas impulsionales y en frecuencia (analitica y obtenidas en MATLAB)\n 4)Sistema 3: Graficar las respuestas impulsionales y en frecuencia (analitica y obtenidas en MATLAB)\n 5)Sistema 4: Graficar las respuestas impulsionales y en frecuencia (analitica y obtenidas en MATLAB)\n 6)Graficar señales de salida del ejercicio 1 inciso 4\n 7)Graficar TFTDs del ejercicio 1 inciso 5\nEjercicio 2:\n 8) Graficar respuesta impulsional obtenida por hcanald.m y la obtenida mediante la ecuacion en diferencias\n 9) Graficar la señal de entrada x y su salida y del inciso 3. Reproducir audio de la señal de salida y\n 10) Graficar la respuesta impulsional de cada cascada(canal+filtro) del inciso 4\n 11)Graficar la señal filtrada con el filtro de 2 ramas y escuchar como suena \n 12) Graficar la señal filtrada con el filtro de 3 ramas y escuchar como suena\n 13) Graficar señal original x junto con la señal obtenida de los 2 filtros');

    % Evalúa la elección y llama al script correspondiente
    switch choice
        case 0
            break;
        case 1
            disp('Calling script1...');
            %script1;
        case 2
            disp('Calling script2...');
            %script2;
        case 3
            disp('Calling script3...');
            %script3;
        case 4
            disp('Calling script3...');
            %script3;
        case 5
            disp('Calling script3...');
            %script3;
        case 6
            disp('Calling script3...');
            %script3;
        case 7
            disp('Calling script3...');
            %script3;
        case 8
            disp('Calling script3...');
            %script3;
        case 9
            disp('Calling script3...');
            %script3;
        case 10
            disp('Calling script3...');
            %script3;
        case 11
            disp('Calling script3...');
            %script3;
        case 12
            disp('Calling script3...');
            %script3;
        case 13
            disp('Calling script3...');
            %script3;
        otherwise
            disp('Opción no válida. No se ejecuta ningún script.');
    end
end