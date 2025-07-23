# DEMO-ADD.cob

Este programa COBOL forma parte de la serie de demostraciones  para el **Manual COBOL VLADISYSTEMS**.

## 🎯 Objetivo

Demostrar el uso de la instrucción `ADD` en sus diferentes formas:

- `ADD A TO B`
- `ADD A, B TO C`
- `ADD CORRESPONDING grupo-A TO grupo-B`

Incluye comentarios explicativos (`*>`) en el código para cada forma usada.

## 🔧 Estructura del programa

Se define un grupo de variables (`GRUPO-A`, `GRUPO-B`) con nombres similares, y se aplican operaciones aritméticas con `ADD`, incluyendo la forma `CORRESPONDING`.

El programa muestra cómo **sumar automáticamente campos con nombres coincidentes entre dos grupos de datos**.

## 💾 Archivos

- `DEMO-ADD.cob`: Código fuente con todas las formas de `ADD`.
- `README.md`: Este archivo, con descripción y objetivo del programa.

## 🧠 Notas del Tigre

- Si usas nombres idénticos en diferentes niveles (ej: A1 en `GRUPO-A` y `GRUPO-B`), debes calificarlos con `IN` para evitar errores.
- `ADD CORRESPONDING` es útil, pero exige **nombres coincidentes y estructuras paralelas**.

## 👨‍💻 Autor

**Vladimir "Tigre" Alba**  
Repositorio: [VLADISYSTEMS/cobol-practicas-vladisystems](https://github.com/VLADISYSTEMS/cobol-practicas-vladisystems)  
      *> ==============================================================
      *> DEMO COBOL: USO DE LA INSTRUCCIÓN ADD
      *> Archivo: DEMO-ADD.cob
      *> Autor: VLADISYSTEMS (El Tigre COBOLero 🐅)
      *> Descripción:
      *>   Este programa muestra diferentes formas de utilizar
      *>   la instrucción ADD en COBOL, explicadas y demostradas.
      *>   Forma parte del repositorio pedagógico COBOL "Panadería VLADISYSTEMS".
      *> ==============================================================
      *> Contenido del demo:
      *> 
      *> 1) ADD NUM1 TO NUM2
      *>    - Forma clásica.
      *>    - NUM2 incrementa su valor en NUM1.
      *> 
      *> 2) ADD NUM1 NUM2 TO NUM3
      *>    - Se suman múltiples operandos (NUM1 + NUM2).
      *>    - El resultado se acumula en NUM3.
      *> 
      *> 3) ADD NUM1 TO NUM2 GIVING RESULT1
      *>    - El resultado no modifica los operandos.
      *>    - Se almacena directamente en RESULT1.
      *> 
      *> 4) ADD 2.5 TO NUM1 GIVING RESULT2 ROUNDED
      *>    - Incluye decimales y redondeo.
      *>    - Ideal cuando se manejan centavos o unidades fraccionarias.
      *> 
      *> 5) ADD 10 TO WS-SMALL ON SIZE ERROR
      *>    - Maneja el posible desbordamiento (overflow).
      *>    - Si el resultado excede el tamaño de destino, entra al bloque ON SIZE ERROR.
      *> 
      *> 6) ADD CORRESPONDING GRUPO-B TO GRUPO-A
      *>    - Suma campo a campo entre dos grupos de datos con estructura similar.
      *>    - Muy útil en registros o estructuras repetitivas.
      *> 
      *> Salida esperada:
      *>   El programa imprime resultados paso a paso para cada ADD,
      *>   mostrando cómo se modifican las variables involucradas.
      *> 
      *> Uso:
      *>   Ideal para quienes están aprendiendo COBOL moderno, repasando
      *>   las variantes del verbo ADD con ejemplos claros y ejecutables.
      *> ==============================================================
*> ===============================================================
*>  DEMO COBOL: INSTRUCCIÓN ADD + CORRESPONDING
*>  Autor      : Vladisystems (El Tigre del COBOL)
*>  Descripción:
*>     Este demo muestra cómo se utiliza la instrucción ADD
*>     en COBOL en varias de sus formas: 
*>       - ADD A TO B
*>       - ADD A B TO C
*>       - ADD A TO B GIVING RESULT
*>       - ADD literal TO var GIVING RESULT ROUNDED
*>       - ADD CORRESPONDING GRUPO-A TO GRUPO-B
*> 
*>     ⚠️ Importante: 
*>       El uso de CORRESPONDING requiere que los campos 
*>       tengan el mismo nombre pero pertenezcan a grupos 
*>       distintos (como A1 EN GRUPO-A y A1 EN GRUPO-B).
*>       Si se repiten los nombres sin calificación, 
*>       da error de ambigüedad.
*> 
*>     🐅 Truco COBOLero:
*>       Si obtienes errores como "ambiguous name", 
*>       asegúrate de que los campos se llamen diferente 
*>       o estén correctamente calificados. Aquí usamos A1-A
*>       y A1-B para evitar confusiones y mostrar claramente 
*>       cómo actúa el CORRESPONDING.
*> 
*>     💡 Este demo forma parte de la serie de programas 
*>       tipo “panadería COBOL” de Vladisystems: 
*>       fáciles, útiles y pensados para el entrenamiento 
*>       diario de reflejos coboleros 🧠⚡
*> ===============================================================
