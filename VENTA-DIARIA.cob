       IDENTIFICATION DIVISION.
       PROGRAM-ID. VENTA-DIARIA.

       ENVIRONMENT DIVISION.
       CONFIGURATION SECTION.

       DATA DIVISION.
       WORKING-STORAGE SECTION.

       *>----------------------------------------------------
       *> VARIABLES DE ENTRADA
       *>----------------------------------------------------
       01 VENTA.
           05 PRODUCTO           PIC X(20).
           05 UNIDADES           PIC 9(3).
           05 PRECIO-UNITARIO    PIC 9(7)V99.  *> Hasta 9.999.999,99

       *>----------------------------------------------------
       *> VARIABLES DE CÁLCULO
       *>----------------------------------------------------
       01 CALCULO.
           05 TOTAL-BRUTO        PIC 9(9)V99.
           05 IVA                PIC V99 VALUE 0.19.
           05 TOTAL-IVA          PIC 9(9)V99.
           05 TOTAL-NETO         PIC 9(11)V99.

       *>----------------------------------------------------
       *> VARIABLES DE PRESENTACIÓN (sin ceros a la izquierda)
       *>----------------------------------------------------
       01 FORMATO.
           05 F-BRUTO            PIC Z(9).99.
           05 F-IVA              PIC Z(9).99.
           05 F-NETO             PIC Z(11).99.

       PROCEDURE DIVISION.

       *>INICIO.
           DISPLAY "==============================="
           DISPLAY " SISTEMA DE VENTA DEL DÍA - VLADI"
           DISPLAY "==============================="

           DISPLAY "Ingrese nombre del producto:"
           ACCEPT PRODUCTO

           DISPLAY "Ingrese cantidad de productos:"
           ACCEPT UNIDADES

           DISPLAY "Ingrese precio unitario: (ej: 45000.00)"
           ACCEPT PRECIO-UNITARIO

           *>---------------------------------------------
           *> CÁLCULOS
           *>---------------------------------------------
           MULTIPLY UNIDADES BY PRECIO-UNITARIO GIVING TOTAL-BRUTO
           MULTIPLY TOTAL-BRUTO BY IVA GIVING TOTAL-IVA
           ADD TOTAL-BRUTO TO TOTAL-IVA GIVING TOTAL-NETO

           *> FORMATEO DE RESULTADOS
           MOVE TOTAL-BRUTO TO F-BRUTO
           MOVE TOTAL-IVA TO F-IVA
           MOVE TOTAL-NETO TO F-NETO

           *>---------------------------------------------
           *> SALIDA EN PANTALLA
           *>---------------------------------------------
           DISPLAY "==============================="
           DISPLAY "     RESUMEN DE LA VENTA"
           DISPLAY "==============================="
           DISPLAY "Producto vendido: " PRODUCTO
           DISPLAY "Cantidad vendida: " UNIDADES
           DISPLAY "Total bruto     : $" F-BRUTO
           DISPLAY "IVA (19%)       : $" F-IVA
           DISPLAY "Total a pagar   : $" F-NETO
           DISPLAY "==============================="

           STOP RUN.
