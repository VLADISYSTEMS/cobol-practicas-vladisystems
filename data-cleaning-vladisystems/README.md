📂 README.md – Limpieza de Datos de Contactos
1️⃣ Descripción del Proyecto

Este proyecto muestra un proceso completo de limpieza y normalización de datos de contactos usando Google Sheets.
Permite tomar información cruda (contacts_dirty.csv), limpiar nombres, emails, teléfonos y ciudades, y generar un reporte final de correcciones manuales (Nota_Correjido.csv).

El objetivo es preparar los datos para uso profesional, asegurando que:

Los teléfonos estén normalizados con prefijo +57.

Los emails estén limpios y consistentes.

Los nombres y ciudades respeten mayúsculas, tildes y formato correcto.

Los registros incompletos o erróneos estén marcados para revisión.

2️⃣ Estructura de Archivos
Archivo	Descripción
contacts_dirty.csv	Datos originales “crudos” importados.
limpia.csv	Datos limpios con fórmulas aplicadas (nombres, emails, teléfonos, ciudades).
Nota_Correjido.csv	Reporte de correcciones manuales con observaciones.
/screenshots/	Carpeta con pantallazos de Google Sheets mostrando fórmulas y resultados.
3️⃣ Flujo de Trabajo Paso a Paso

Importar datos crudos

Abrir contacts_dirty.csv en Google Sheets.

Columnas iniciales: Nombre, Email, Teléfono, Ciudad, Observaciones.

Normalizar nombres y emails

Fórmulas ejemplo:

=ARRAYFORMULA(IF(A2:A="", "", PROPER(TRIM(A2:A))))
=ARRAYFORMULA(IF(B2:B="", "", LOWER(TRIM(B2:B))))


Se generan columnas Nombre_limpio y Email_limpio.

Normalizar teléfonos

Problema: valores mezclados (números con +57, 3XX al inicio, números incompletos).

Fórmula aplicada para normalizar:

=IFERROR(
  IF(D2="","",IF(LEFT(REGEXREPLACE(TO_TEXT(D2),"[^0-9]",""),2)="57",
  "+" & REGEXREPLACE(TO_TEXT(D2),"[^0-9]",""),
  "+57" & REGEXREPLACE(TO_TEXT(D2),"[^0-9]",""))),
"")


Se genera columna Tel_digits.

Números incompletos o erróneos se marcan para revisión manual en Nota_Correjido.csv.

Normalizar ciudades

Fórmula ejemplo:

=ARRAYFORMULA(IF(E2:E="", "", PROPER(TRIM(E2:E))))


Se genera columna Ciudad_limpia.

Generar reporte de correcciones manuales

Copiar las columnas finales: Nombre, Email, Teléfono, Ciudad a Nota_Correjido.csv.

Agregar columna Observaciones para marcar problemas como:

Teléfonos incompletos.

Emails con formato incorrecto.

Ciudades con nombre no estándar.

4️⃣ Pantallazos y Ejemplos
contacts_dirty.csv – Teléfonos normalizados

limpia.csv – Emails limpios

Nota_Correjido.csv – Nombres y ciudades corregidas

5️⃣ Cómo replicar el proceso

Importa cualquier archivo CSV con estructura similar (Nombre, Email, Teléfono, Ciudad, Observaciones).

Copia las fórmulas de limpia.csv en tu nueva hoja.

Aplica ARRAYFORMULA para toda la columna para que se calcule automáticamente.

Copia las columnas finales a Nota_Correjido.csv y agrega observaciones manuales si algún dato no es válido.

6️⃣ Bonus – Buenas prácticas

Siempre mantener la hoja de datos crudos intacta.

Separar fórmulas de los datos finales.

Usar Pegado especial → Valores solamente para fijar resultados antes de entregar.

Mantener consistencia en nombres de archivos y columnas.