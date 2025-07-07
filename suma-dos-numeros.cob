       IDENTIFICATION DIVISION.
       PROGRAM-ID. SUMA-DOS-NUMEROS.

       ENVIRONMENT DIVISION.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 NUMERO-1     PIC 9(5).
       01 NUMERO-2     PIC 9(5).
       01 RESULTADO    PIC 9(6).

       PROCEDURE DIVISION.
           DISPLAY "Ingrese el primer número: "
           ACCEPT NUMERO-1
           DISPLAY "Ingrese el segundo número: "
           ACCEPT NUMERO-2
           COMPUTE RESULTADO = NUMERO-1 + NUMERO-2
           DISPLAY " "
           DISPLAY "La suma es: " RESULTADO
           STOP RUN.
