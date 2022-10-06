--Felipe Correa Lopes dos Santos
module Main where

{- 1. Escreva uma função para o cálculo dos números da sequência de Fibonacci, utilizando Haskell. -}

fibonacci :: Int -> Int
fibonacci 1 = 1
fibonacci 0 = 0
fibonacci x = fibonacci (x-2) + fibonacci (x-1)

{- 2. Um dos primeiros algoritmos documentados é o algoritmo para o cálculo do Maior Divisor Comum (MDC) de Euclides publicado por volta do ano 300 AC. Podemos simplificar este algoritmo dizendo que dados dois inteiros A e B, o MDC entre eles será dado pelo valor absoluto de A se B=0 e pelo MDC entre B e o resto da divisão de A por B se B>0. Escreva uma função para o cálculo do MDC entre dois números inteiros positivos, usando o algoritmo de Euclides conforme apresentado aqui, utilizando Haskell. -}
mdc :: Int -> Int -> Int
mdc a 0 = abs a
mdc a b = mdc b (mod a b)


{- 3. Escreva uma função recursiva que dado um número inteiro n, devolva a soma dos dígitos deste número. Exemplo: dado 1234 a função deverá devolver 10. Utilizando Haskell e recursividade. -}
somaDigitos :: Int -> Int
somaDigitos 0 = 0
somaDigitos n = snd(divMod n 10) + somaDigitos (fst(divMod n 10))

{- 4. Escreva uma função que devolva a soma de todos os números menores que 10000 que sejam múltiplos de 3 ou 5. -}
somaMenoresQue :: Int -> Int -> Int
somaMenoresQue soma 0 = soma
somaMenoresQue soma n = if ((snd(divMod n 3) == 0) || (snd(divMod n 5) == 0)) then somaMenoresQue (soma+n) (n-1) else somaMenoresQue soma (n-1)

somaMenoresQueX :: Int -> Int
somaMenoresQueX x = somaMenoresQue 0 x

{- 5. Escreva uma função que, recebendo uma lista de inteiros, apresente a diferença entre a soma dos quadrados e o quadrado da soma destes inteiros, usando recursividade. -}
somaLista :: [Int] -> Int
somaLista [] = 0
somaLista (cabeca: calda) = cabeca + somaLista calda

quadradoLista :: [Int] -> [Int]
quadradoLista lista = [i^2 | i <- lista]

diferenca5 :: [Int] -> Int
diferenca5 lista = somaLista (quadradoLista lista) - (somaLista lista)^2

{- 6. O Crivo de Erastóstenes não é o melhor algoritmo para encontrar números primos. Crie uma função que implemente o Crivo de Euler (Euler's Sieve) para encontrar todos os números primos menores que um determinado inteiro dado. -}
crivoAux :: Int -> [Int] -> [Int]
crivoAux limite [] = []
crivoAux limite lista
  | head lista > limite = lista
  | otherwise = [head lista] ++ crivoAux limite [n| n <- tail lista, n `mod` (head lista) /= 0]

crivo :: Int -> [Int]
crivo n = crivoAux n [2..n]

{- 7. Nem só de Fibonacci vivem os exemplos de recursão. Escreva uma função que devolva todos os números de uma sequência de Lucas (2,1, 3, 4, 7, 11, 18, 29, 47, 76, 123) menores que um inteiro dado. -}
lucasAux :: Int -> Int -> Int -> [Int] -> [Int]
lucasAux 0 penultimo ultimo lista = lista
lucasAux contador penultimo ultimo lista = lucasAux (contador-1) ultimo (penultimo+ultimo) (lista ++ [ultimo+penultimo])

lucasAux2 :: Int -> [Int]
lucasAux2 n = lucasAux n 2 1 [2,1]

lucas :: Int -> [Int]
lucas 1 = [1]
lucas 2 = [2, 1]
lucas n = if n < 1 then [] else lucasAux2 (n-2)

{- 8. Escreva uma função, chamada aoContrario em Haskell para reverter uma lista. Dado [1, 2, 3] devolva [3, 2, 1]. -}
aoContrario :: [Int] -> [Int]
aoContrario [] = []
aoContrario (cabeca:calda) = aoContrario calda ++ [cabeca] 

{- 9. Escreva uma função chamada somaRecursiva que recebe dois valores inteiros e devolve o produto destes valores sem usar o operador de multiplicação. -}
somaRecursiva :: Int -> Int -> Int
somaRecursiva x y
    | y == 0 = 0
    | y > 0 = x + somaRecursiva x (y - 1)
    | otherwise = negate (somaRecursiva x (negate y))

{- 10. Escreva uma função chamada comprimento que recebe uma lista de inteiros e devolva o comprimento desta lista. Observe que você não pode usar nenhuma função que já calcule o comprimento de uma lista. -}
comprimento :: [Int] -> Int
comprimento [] = 0
comprimento (cabeca:cauda) = 1 + comprimento cauda

main = do
  putStrLn("Func. 1: Entrada: 6; Resultado: " ++ show (fibonacci 6))
  putStrLn("Func. 2: Entrada: 16, 36; Resultado: " ++ show (mdc 16 36))
  putStrLn("Func. 3: Entrada: 1234; Resultado: " ++ show (somaDigitos 1234))
  putStrLn("Func. 4: Entrada: 10; Resultado: " ++ show (somaMenoresQueX 10000))
  putStrLn("Func. 5: Entrada: [2,4,6]; Resultado: " ++ show (diferenca5 [2,4,6]))
  putStrLn ("Func. 6: entrada: 20; resultado: " ++ show(crivo (20)))
  putStrLn("Func. 7: Entrada: 3; Resultado: " ++ show (lucas 5))
  putStrLn("Func. 8: Entrada: [1,2,3]; Resultado: " ++ show (aoContrario [1,2,3]))
  putStrLn("Func. 9: Entrada: 3, 4; Resultado: " ++ show (somaRecursiva 3 4))
  putStrLn("Func. 10: Entrada: [1,1,1,1,1]; Resultado: " ++ show (comprimento [1,1,1,1,1]))
  
