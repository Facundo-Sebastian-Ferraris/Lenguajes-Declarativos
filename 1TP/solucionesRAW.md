# 📋 Ejercicio 1: Equivalencia de Listas
Indique cuáles de las siguientes listas son equivalentes a la lista original `[1,2,3,4,5,6,7]`:

```prolog
% Listas que lo son:
[1, 2, 3, 4, 5, 6, 7 | []]								%(2)
[1 | [2, 3, 4, 5, 6, 7]]								%(3)
[1, 2, 3 | [4 | [5, 6, 7]]]							%(4)
[1, 2 | [3, 4, 5, 6, 7 | []]]							%(7)
[1 | [2 | [3 | [4 | [5 | [6 | [7 | []]]]]]]]		%(9)

% Listas que NO lo son:
[1|2, 3, 4, 5, 6, 7]										%(1)
[1 | [2, 3, [4, 5, 6, 7]]]								%(5)
[1, 2 | [3, 4, 5, 6, 7, []]]							%(6)
[1, 2, [3, 4, [5, 6, [7]]]]							%(8)

```

---

# 🔄 Ejercicio 2: Operaciones sobre Listas
Implementar programas para realizar las siguientes tareas:

*   **(a)** ⬅️ **Rotación a la izquierda:** ej. `` → ``.
*   **(b)** ➡️ **Rotación a la derecha:** ej. `` → ``.
*   **(c)** ❌ **Eliminación:** borrar todas las ocurrencias de un elemento.
*   **(d)** 🔁 **Sustitución:** cambiar todas las ocurrencias de un elemento por otro.
*   **(e)** 🔢 **Cardinalidad:** contar elementos no repetidos (ej. `` → `4`).
*   **(f)** 🔃 **Inversión:** ej. `` → ``.
*   **(g)** 📑 **Sufijo.**
*   **(h)** 🪞 **Palíndromo:** generar uno a partir de una lista (ej. `abcd` → `abcddcba`).
*   **(i)** 👥 **Doblar elementos:** ej. `` → ``.

---

# 🔢 Ejercicio 3: Operaciones sobre Conjuntos
Representando conjuntos mediante listas, implementar:

*   **(a)** Inclusión ⊂
*   **(b)** Igualdad =
*   **(c)** Unión ∪
*   **(d)** Intersección ∩
*   **(e)** Diferencia \
*   **(f)** 📐 **Producto cartesiano:** ej. `` y `[a,b]` → `[[1,a],[1,b],[2,a],[2,b],[3,a],[3,b]]`.

---

# 🌳 Ejercicio 4: Árboles Binarios
Establecer una estructura para árboles binarios de búsqueda (hijo izquierdo < raíz < hijo derecho) e implementar:

*   **(a)** Pertenencia, agregar y eliminar elementos.
*   **(b)** Acceso a hijo izquierdo, derecho y raíz.
*   **(c)** Recorridos: **inorden**, **preorden** y **postorden**.
*   **(d)** 🧬 **Isomorfismo:** determinar si dos árboles tienen la misma estructura.

---

# 💼 Ejercicio 5: Representación de Bags (Multiconjuntos)
Un **bag** se representa como `bag(Elemento, Multiplicidad, Restodebag)`, usando `void` para el bag vacío.
*Ejemplo: `bag(a,3,bag(b,2,void))` representa `[a,a,a,b,b]`.*

**Implementar:**
*   **(a)** Unión e **(b)** Intersección de bags.
*   **(c)** Sustitución de elementos.
*   **(d)** Conversión de bag a lista.
*   **(e)** Conversión de lista desordenada a bag.

---

# ⚡ Ejercicio 6: Arrays y Eficiencia
Piense cómo representar un **array** en Prolog para obtener dos tipos de acceso:
1.  Tiempo de acceso de **orden m** (longitud del array).
2.  Tiempo de acceso de **orden constante**.

---

# 🧠 Ejercicio 7: Teoría y Negación
*   **(a)** Defina la **negación por falla** y explique la **Suposición de Mundo Cerrado (CWA)**.
*   **(b)** ¿Coincide la negación por falla de Prolog con la **lógica clásica**? Justifique.

---

# 🦒 Ejercicio 8: El Mundo de los Animales
Si un programa clasifica animales y, ante la pregunta de si la capital de Angola es Luanda, responde "no":
*   ¿Qué debe suponer el usuario?
*   ¿Existe una respuesta más exacta según la lógica de Prolog?

---

# 🔍 Ejercicio 9: Predicados de Agregación
Dado un conjunto de hechos `parent(Padre, Hijo)`, explorar el funcionamiento de:
*   `findall/3`
*   `setof/3`
*   `bagof/3`

**Pruebe consultas como:** `findall(X, parent(X,Y), L).`

