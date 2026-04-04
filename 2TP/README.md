## 📝 Práctico Nº 2
**Temas principales:**
*   🔄 **Tail Recursive** (Recursión a la cola)
	*   🔗 **Diferencia de Listas**
	*   ⚙️ **Definite Clause Grammars (D.C.G.)**

	---

### 🔄 Ejercicio 1: Optimización de Recursión
	Dar la versión **recursiva a la cola** (tail recursive) de los siguientes predicados:

	**(a) Suma de elementos:**
	```prolog
	sum([], 0).
	sum([H|T], N):-
		sum(T, X),
		N is X + H.
		```

		**(b) Sucesión de Fibonacci:**
		```prolog
		fib(0,1).
		fib(1,1).
		fib(N,R):-
			N >= 2,
			N1 is N - 1,
			N2 is N - 2,
			fib(N1,R1),
			fib(N2,R2),
			R is R1 + R2.
			```

			---

### 🔗 Ejercicio 2: Diferencia de Listas
			Considere la implementación de `append_dl` de una sola línea frente al `append` tradicional de dos líneas:

			*   **Implementación:** `append_dl(X-Y, Y-Z, X-Z).`

			**Tarea:** Realice el **árbol SLD** para las siguientes consultas y compare la performance:
			1.  `?- append_dl([a,b|A]-A, [c,d|C]-C, Lista).`
			2.  `?- append([a,b], [c,d], Lista).`

			> 💡 *Nota: La performance mejora considerablemente usando diferencia de lista.*

			---

### ⚙️ Ejercicio 3: Gramáticas DCG
			Escriba una gramática e impleméntela con **DCG** para reconocer las siguientes cadenas:

			*   **(a)** $a^N c^N b^N$ (Debe devolver el valor de $N$).
			*   **(b)** $a^* c b^*$
			*   **(c)** $a b a^* (b c)^*$
			*   **(d)** $a^N c^M b^{N+M}$
			*   **(e)** $a^M c^{M+1} b^L$, donde $M \geq 2$ y $L$ es par.
			*   **(f)** Traducir los ejercicios anteriores a su versión de **diferencia de lista**.

			❓ **Consulta Prolog:** Exprese para el inciso **(a)**: *¿pertenece `aaccbb` al lenguaje?*.

			---

### 🔃 Ejercicio 4: Inversión de Dígitos
			Definir en Prolog una **DCG** que invierta una cadena de dígitos dada como entrada.

			---

### 🗣️ Ejercicio 5: Reconocimiento de Oraciones
			Construir un programa en **DCG** que reconozca oraciones con la siguiente estructura:
			*   `Artículo` + `Sustantivo` + `Verbo` + `Modificador del verbo`.

			**Reglas adicionales:**
			*   Los elementos pueden ser **nulos**.
			*   Debe respetar el **género** (masculino/femenino) entre el artículo, sustantivo y modificador.
			*   **Vocabulario base:** *el, la, nene, nena, pequeño, pícara, es, juega*.

			**Ejemplos válidos:**
			*   "El nene es pequeño."
			*   "El pequeño juega."
			*   "La nena es pícara."

			---

### 📂 Ejercicio 6: Procesamiento de Archivos
			Realizar un predicado en **DCG** para procesar texto:

			1.  **Entrada:** Un archivo con filas de números (1..5) y letras (a..f) separados por comas.
			*   *Ejemplo:* `1d2b3f`, `aca4`, `1234a`.
			2.  **Acción:** Descomponer la entrada en **dos archivos** distintos:
			*   **Archivo 1:** Contiene solo los números de cada fila.
			*   **Archivo 2:** Contiene solo las letras de cada fila.

			---
