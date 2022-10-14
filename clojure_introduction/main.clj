; FELIPE CORREA LOPES DOS SANTOS
; 1. Utilizando  a  linguagem  Clojure,  crie  uma  função  chamada  ultimo  que  receba  uma lista  e devolva o último elemento desta lista sem usar as funções já prontas e disponíveis para esta mesma finalidade na linguagem Clojure.

(defn ultimo [lst]
  (if (= (count lst) 1)
    (first lst)
    (ultimo (rest lst))))

(println "Func. 1: entrada: '(1 2 3 4 5 6 7 8 9); resultado:" (ultimo '(1 2 3 4 5 6 7 8 9)))

; 2. Utilizando a linguagem Clojure, crie uma função chamada penultimo que receba uma lista e devolva o penúltimo elemento desta lista usar as funções já prontas e disponíveis para esta mesma finalidade na linguagem Clojure.

(defn penultimo [lst]
  (if (= (count lst) 2)
    (first lst)
    (penultimo (rest lst))))

(println "Func. 2: entrada: '(1 2 3 4 5 6 7 8 9); resultado:" (penultimo '(1 2 3 4 5 6 7 8 9)))

; 3. Utilizando a linguagem Clojure, crie uma função chamada elementoN que receba uma lista e um inteiro N e devolva o  elemento que está na posição N desta lista usar as funções já prontas e disponíveis para esta mesma finalidade na linguagem Clojure

(defn elementoN [lst n]
  (if (= n 0)
    (first lst)
    (elementoN (rest lst) (- n 1))))

(println "Func. 3: entrada: '(1 2 3 4 5 6 7 8 9) 5; resultado:" (elementoN '(1 2 3 4 5 6 7 8 9) 5))

; 4. Utilizando a linguagem Clojure, crie uma função chamada inverso que receba uma lista e devolva esta lista com as posições dos elementos invertidas. Por exemplo recebe [1,2,3] e devolve [3,2,1]. Sem usar as funções já prontas e disponíveis para esta mesma finalidade na linguagem Clojure.

(defn inverso [lst]
  (if (= (count lst) 0)
    []
    (conj (inverso (rest lst)) (first lst))))

(println "Func. 4: entrada: '(1 2 3 4 5 6 7 8 9); resultado:" (inverso '(1 2 3 4 5 6 7 8 9)))

; 5. Utilizando a  linguagem Clojure, crie uma função chamada  mdc que receba dois inteiros e devolve o mínimo divisor comum entre eles. Sem usar as funções já prontas e disponíveis para esta mesma finalidade na linguagem Clojure.

(defn resto [x y]
  (if (>= x y)
    (resto (- x y) y)
    x))

(defn mdc [x y]
  (if (= y 0)
    x
    (mdc y (resto x y))))

(println "Func. 5: entrada: 10 12; resultado:" (mdc 10 12))
