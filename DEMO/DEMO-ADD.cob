           IDENTIFICATION DIVISION.
       PROGRAM-ID. DEMO-ADD.
       *> ----------------------------------------------------------------
       *> Programa de demostración de diversas formas de usar la instrucción ADD.
       *> Incluye ejemplos de: 
       *>   1. Forma clásica: ADD A TO B.
       *>   2. Sumar múltiples operandos.
       *>   3. ADD con GIVING para almacenar el resultado.
       *>   4. ADD con ROUNDED.
       *>   5. ADD con manejo de ON SIZE ERROR.
       *>   6. ADD CORRESPONDING para sumar grupos de datos.
       *> ----------------------------------------------------------------

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       
       *> Variables para operaciones numéricas simples
       01 NUM1         PIC 9(3) VALUE 10.
       01 NUM2         PIC 9(3) VALUE 5.
       01 NUM3         PIC 9(3) VALUE 20.
       01 RESULT1      PIC 9(3).      *> Almacena resultado de ADD...GIVING
       01 RESULT2      PIC 9(3).      *> Resultado de ADD con ROUNDED
       01 RESULT3      PIC 9(3).      *> (Se puede usar en otros ejemplos)
       01 WS-OVERFLOW  PIC 9(3) VALUE 999.
       01 WS-SMALL     PIC 9(2) VALUE 98.

       *> Variables para el ejemplo de ADD CORRESPONDING
       01 GRUPO-A.
           05 A1 PIC 9(3) VALUE 10.
           05 A2 PIC 9(3) VALUE 20.
           05 A3 PIC 9(3) VALUE 30.

       01 GRUPO-B.
           05 A1 PIC 9(3) VALUE 1.
           05 A2 PIC 9(3) VALUE 2.
           05 A3 PIC 9(3) VALUE 3.

       PROCEDURE DIVISION.
       MAIN-PARA.
       
           *> --------------------------------------------------------------
           *> 1. Forma clásica: ADD A TO B
           *> Suma el valor de NUM1 a NUM2 (NUM2 = NUM2 + NUM1)
           *> --------------------------------------------------------------
           DISPLAY "=== DEMO DE LA INSTRUCCION ADD ===".
           ADD NUM1 TO NUM2.
           DISPLAY "1) ADD NUM1 TO NUM2 = " NUM2.

           *> --------------------------------------------------------------
           *> 2. ADD múltiples operandos a uno solo
           *> Suma NUM1 y NUM2 y almacena el resultado en NUM3.
           *> --------------------------------------------------------------
           ADD NUM1 NUM2 TO NUM3.
           DISPLAY "2) ADD NUM1 NUM2 TO NUM3 = " NUM3.

           *> --------------------------------------------------------------
           *> 3. ADD ... GIVING
           *> Realiza la suma de NUM1 y NUM2 y guarda el resultado en RESULT1.
           *> --------------------------------------------------------------
           ADD NUM1 TO NUM2 GIVING RESULT1.
           DISPLAY "3) ADD NUM1 TO NUM2 GIVING RESULT1 = " RESULT1.

           *> --------------------------------------------------------------
           *> 4. ADD con ROUNDED
           *> Suma 2.5 a NUM1, redondeando el resultado, y lo almacena en RESULT2.
           *> --------------------------------------------------------------
           ADD 2.5 TO NUM1 GIVING RESULT2 ROUNDED.
           DISPLAY "4) ADD 2.5 TO NUM1 GIVING RESULT2 ROUNDED = ".
           DISPLAY RESULT2.

           *> --------------------------------------------------------------
           *> 5. ADD con manejo de ON SIZE ERROR
           *> Intenta sumar 10 a WS-SMALL. Si se produce overflow (por tamaño),
           *> muestra un mensaje de error.
           *> --------------------------------------------------------------
           ADD 10 TO WS-SMALL
               ON SIZE ERROR
                   DISPLAY "5) OVERFLOW DETECTADO en WS-SMALL!".
           DISPLAY "5) WS-SMALL ahora vale: " WS-SMALL.

           *> --------------------------------------------------------------
           *> 6. ADD CORRESPONDING
           *> Suma cada elemento de GRUPO-B al correspondiente en GRUPO-A.
           *> Antes y después se muestran los valores de GRUPO-A.
           *> --------------------------------------------------------------
       DISPLAY "ANTES DEL ADD:"
       DISPLAY "A1-A = " A1 IN GRUPO-A
       DISPLAY "A2-A = " A2 IN GRUPO-A
       DISPLAY "A3-A = " A3 IN GRUPO-A

       ADD CORRESPONDING GRUPO-B TO GRUPO-A

       DISPLAY "DESPUES DEL ADD:"
       DISPLAY "A1-A = " A1 IN GRUPO-A
       DISPLAY "A2-A = " A2 IN GRUPO-A
       DISPLAY "A3-A = " A3 IN GRUPO-A



           DISPLAY "=== FIN DEL DEMO ADD ===".

           STOP RUN.
