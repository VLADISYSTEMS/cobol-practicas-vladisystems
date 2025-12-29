# Mini Proyecto: Limpieza, Análisis y Dashboard de Ventas en Excel

## Descripción
Este proyecto simula un encargo de cliente para limpiar, organizar y analizar transacciones de ventas en Excel.  
El objetivo es consolidar datos, generar métricas clave, y crear un mini-dashboard visual que se pueda actualizar fácilmente.

Herramientas: Excel Online / Office 365, sin complementos ni Power Query.

---

## 1️⃣ Solicitud del cliente
- Consolidar varios archivos de ventas.
- Eliminar duplicados y estandarizar fechas.
- Organizar códigos de producto y separar campos combinados.
- Analizar tendencias mes a mes y trimestre a trimestre.
- Crear gráficos interactivos (líneas y barras).
- Generar hoja de resumen con KPIs.
- Todo compatible con Office 365, sin complementos externos.

---

## 2️⃣ Datos originales (simulados)

### Enero 2025
| Fecha     | Producto | Región | Cantidad | Monto |
|-----------|---------|-------|---------|-------|
| 01/01/25 | A123    | Norte | 10      | 200   |
| 01/01/25 | A123    | Norte | 10      | 200   |
| 02/01/25 | B456    | Sur   | 5       | 150   |
| 03/01/25 | C789    | Este  | 8       | 320   |

### Febrero 2025
| Fecha     | Producto | Región | Cantidad | Monto |
|-----------|---------|-------|---------|-------|
| 01/02/25 | A123    | Norte | 12      | 240   |
| 02/02/25 | B456    | Sur   | 6       | 180   |
| 03/02/25 | C789    | Este  | 9       | 360   |

### Marzo 2025
| Fecha     | Producto | Región | Cantidad | Monto |
|-----------|---------|-------|---------|-------|
| 01/03/25 | A123    | Norte | 15      | 300   |
| 02/03/25 | B456    | Sur   | 7       | 210   |
| 03/03/25 | C789    | Este  | 10      | 400   |

**Acción:** Se consolidaron todos los datos en la hoja `Ventas_Maestra`.

---

## 3️⃣ Tablas dinámicas (Hoja: Analisis)

**Configuración:**
- **Filas:** Mes (extraído de Fecha)
- **Columnas:** Producto
- **Valores:** Suma de Cantidad y Suma de Monto

### Suma de Monto por Producto y Mes
| Mes | A123 | B456 | C789 | Total general |
|-----|-----|-----|-----|---------------|
| 1   | 200 | 150 | 320 | 670           |
| 2   | 240 | 180 | 360 | 780           |
| 3   | 300 | 210 | 400 | 910           |
| Total general | 740 | 540 | 1080 | 2360 |

### Suma de Cantidad por Producto y Mes
| Mes | A123 | B456 | C789 | Total general |
|-----|-----|-----|-----|---------------|
| 1   | 10  | 5   | 8   | 23            |
| 2   | 12  | 6   | 9   | 27            |
| 3   | 15  | 7   | 10  | 32            |
| Total general | 37  | 18  | 27  | 82 |

---

## 4️⃣ Gráficos (Mini Dashboard)

- **Gráfico de líneas:** Evolución del Monto por Producto mes a mes.  
- **Gráfico de barras:** Cantidad vendida por Producto y Mes.  

*Se copiaron estos gráficos a la hoja `Resumen` para tener todo en un mismo lugar.*

---

## 5️⃣ Hoja Resumen

**Encabezado:**
- Proyecto / Empresa / Periodo: Ene-Mar 2025  
- Fecha de generación: 26/09/2025  

**KPIs**
| KPI | Valor |
|-----|-------|
| Ventas Totales (Monto) | 2360 |
| Cantidad Total Vendida | 82   |
| Producto más vendido | C789  |
| Producto con mayor ingreso | C789 |

**Tabla resumen por mes**
| Mes | Total Cantidad | Total Monto | Producto top Cantidad | Producto top Monto |
|-----|----------------|-------------|---------------------|------------------|
| 1   | 23             | 670         | C789                 | C789             |
| 2   | 27             | 780         | C789                 | C789             |
| 3   | 32             | 910         | C789                 | C789             |

**Notas / Observaciones:**  
“El producto C789 mantiene la mayor venta en cantidad y monto. Datos listos para actualizar mensualmente.”

---

## 6️⃣ Resultado final

- Libro maestro `Ventas_Maestra.xlsx` limpio y consolidado.  
- Hoja `Analisis` con tablas dinámicas y gráficos.  
- Hoja `Resumen` con KPIs, mini-tablas y mini-dashboard.  
- Todo compatible con **Excel Online / Office 365**.  

---

## 7️⃣ Archivos en GitHub

**Carpeta:** `mini-ejercicios-excel`  
**Archivos a subir:**
1. `Ventas_Maestra.xlsx`  
2. `Analisis.xlsx`  
3.`Cantidad por Producto y Mes.xlsx`
4.`Monto por Producto y Mes.xlsx`  
5. `Resumen.xlsx`  
6. `README.md` (este archivo)
