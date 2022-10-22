; 1- Na aula disponível em: https://replit.com/@frankalcantara/ClojureAula2?v=1 foram destacadas diversas funções (expressões), como funções de primeira ordem, disponíveis em Clojure. Sua primeira tarefa será descrever cada uma destas funções e apresentar dois exemplos de uso de cada uma delas. Lembre-se os exemplos precisam ser utilizados de forma que o resutado da função possa ser visto no terminal.

; Funções de primeira ordem: sort, partition-by, filter, empty, count, char, assoc, dissoc, range, map, inc, odd, into, nth, conj

; sort - Retorna uma sequência ordenada dos itens, também pode ser utilizado um comparador para realizar a ordenação.

(println "Func. 1 - ex 1 sor - entrada: '10, 2, 6, 4; resultado:" (sort '(10, 2, 6, 4)))
(println "Func. 1 - ex 2 sort - entrada: '10, 2, 6, 4; resultado:" (sort > '(10, 2, 6, 4)))

; partition-by - Divide uma coleção em subcoleções a partir de uma função.

(println "Func. 1 - ex 1 partition-by - entrada: (fn [n] (> n 2)) [1 2 3 4 5] resultado: " (partition-by (fn [n] (> n 2)) [1 2 3 4 5]))
(println "Func. 1 - ex 2 partition-by - entrada: (fn [n] (== n 2)) [1 3 2 5 2 7 8 2] resultado: " (partition-by (fn [n] (== n 2)) [1 3 2 5 2 7 8 2]))

; filter - A partir de uma coleção e uma condição, retorna uma coleção que se encaixem nessa condição.

(println "Func. 1 - ex 1 filter - entrada: (fn [n] (> n 2)) [1 2 3 4 5] resultado: " (filter (fn [n] (> n 2)) [1 2 3 4 5]))
(println "Func. 1 - ex 2 filter - entrada: (fn [n] (== n 2)) [1 3 2 5 2 7 8 2] resultado: " (filter (fn [n] (== n 2)) [1 3 2 5 2 7 8 2]))

; empty - Retorna true caso a coleção esteja vazia

(println "Func. 1 - ex 1 empty - entrada: [] resultado: " (empty? []))
(println "Func. 1 - ex 2 empty - entrada: [1 3 2] resultado: " (empty? [1 3 2]))

; count - Retorna o comprimento de uma coleção

(println "Func. 1 - ex 1 count - entrada: [] resultado: " (count []))
(println "Func. 1 - ex 2 count - entrada: [1 3 2] resultado: " (count [1 3 2]))

; char - Retorna um caracter correspondente a um numero

(println "Func. 1 - ex 1 char - entrada: 65 resultado: " (char 65))
(println "Func. 1 - ex 2 char - entrada: 66 resultado: " (char 66))

; assoc - Associa um valor a uma chave em um dicionário

(println "Func. 1 - ex 1 assoc - entrada: {:felipe 1 :frank 2} :funcional 3 resultado: " (assoc {:felipe 1 :frank 2} :funcional 3))
(println "Func. 1 - ex 2 assoc - entrada: {:felipe 1 :funcional 3} :frank 2 resultado: " (assoc {:felipe 1 :funcional 3} :frank 2))

; dissoc - Remove uma chave de um dicionário

(println "Func. 1 - ex 1 dissoc - entrada: {:felipe 1 :frank 2} :frank resultado: " (dissoc {:felipe 1 :frank 2} :frank))
(println "Func. 1 - ex 2 dissoc - entrada: {:felipe 1 :funcional 3} :funcional resultado: " (dissoc {:felipe 1 :funcional 3} :funcional))

; range - Retorna uma sequencia de Int

(println "Func. 1 - ex 1 range - entrada: 5 resultado: " (range 5))
(println "Func. 1 - ex 2 range - entrada: 10 resultado: " (range 10))

; map - Aplica uma função em todos elementos de uma coleção individualmente

(println "Func. 1 - ex 1 map - entrada: (fn [n] (+ n 2)) [1 2 3 4 5] resultado: " (filter (fn [n] (+ n 2)) [1 2 3 4 5]))
(println "Func. 1 - ex 2 map - entrada: (fn [n] (* n 2)) [2 4 6 8] resultado: " (filter (fn [n] (* n 2)) [2 4 6 8]))

; inc - Incrementa um número

(println "Func. 1 - ex 1 inc - entrada: 5 resultado: " (inc 5))
(println "Func. 1 - ex 2 inc - entrada: 10 resultado: " (inc 10))

; odd - Retorna true caso um número seja impar

(println "Func. 1 - ex 1 odd - entrada: 5 resultado: " (odd? 5))
(println "Func. 1 - ex 2 odd - entrada: 10 resultado: " (odd? 10))

; into - Insere os elementos de uma coleção em outra

(println "Func. 1 - ex 1 into - entrada: [1] [2 3 4] resultado: " (into [1] [2 3 4]))
(println "Func. 1 - ex 2 into - entrada: [3 4] [1] resultado: " (into [3 4] [1]))

; nth - Retorna um elemento de uma posição específica de uma lista

(println "Func. 1 - ex 1 nth - entrada: [1, 2, 3] 1 resultado: " (nth [1, 2, 3] 1))
(println "Func. 1 - ex 2 nth - entrada: [3 4] 0 resultado: " (nth [3 4] 0))

; conj - Insere um elemento em uma coleção

(println "Func. 1 - ex 1 conj - entrada: [1, 2, 3] 1 resultado: " (conj [1, 2, 3] 1))
(println "Func. 1 - ex 2 conj - entrada: [3 4] 0 resultado: " (conj [3 4] 0))

; 2- Utilizando a linguagem Clojure, crie uma função chamada ehPrimo que receba um inteiro e devolva True caso este inteiro seja verdadeiro e False caso contrário. 
(defn ehPrimo [x]
  (if (<= x 1)
    false
    (if (= x 2)
      true
      (if (even? x)
        false
        (loop [i 3]
          (if (< i (Math/sqrt x))
            (if (zero? (rem x i))
              false
              (recur (+ i 2)))
            true))))))

(println "Func. 2: entrada: 531 resultado: " (ehPrimo 531))

;; 3. Utilizando  a  linguagem  Clojure,  crie  uma  função  chamada fatoresPrimos que  receba  um inteiro e devolva uma lista dos seus fatores primos. Decomposição em fatores primos é uma tarefa fundamental da aritmética
(defn fatoresPrimos [x]
  (loop [x x
         i 2
         fatores []]
    (if (<= x 1)
      fatores
      (if (zero? (rem x i))
        (recur (/ x i) i (conj fatores i))
        (recur x (+ i 1) fatores)))))

(println "Func. 3: entrada: 531 resultado: " (fatoresPrimos 531))

; 4. Utilizando  a  linguagem  Clojure,  crie  uma  função  chamada  todosPrimos que  receba  dois valores inteiros e devolve todos os números primos que existam entre estes dois valores.
(defn todosPrimos [x y]
  (loop [x x
         y y
         primos []]
    (if (<= x y)
      (if (ehPrimo x)
        (recur (+ x 1) y (conj primos x))
        (recur (+ x 1) y primos))
      primos)))

(println "Func. 4: entrada: 30 70 resultado: " (todosPrimos 30 70))