--Felipe Correa Lopes dos Santos
module Main where


{- 1. Escreva uma função chamada soma1 que recebe um inteiro como argumento e retorna um 
inteiro uma unidade maior que a entrada. -}

soma1 :: Int -> Int
soma1 x = x+1

{- 2. Escreva  uma  função  chamada  sempre  que,  não  importando  o  valor  de  entrada,  devolva sempre zero. Observe que neste caso a entrada pode ser de qualquer tipo. -}

sempre :: a -> Int
sempre a = 0

{- 3. Escreva  uma  função  chamada  treco  que  receba  três  valores  em  ponto  flutuantes  com precisão dupla e retorne o resultado da soma dos dois primeiros multiplicado pelo terceiro. -}

treco :: Double -> Double -> Double -> Double
treco a b c = (a + b) * c

{- 4. Escreva uma função chamada resto que devolva o resto de uma divisão entre dois números 
inteiros. -}

resto :: Int -> Int -> Int
resto a b = mod a b

{-5. Escreva uma função chamada precoMaior que devolva o maior valor entre quatro valores 
monetários.-}

precoMaior ::  Float -> Float -> Float -> Float -> Float
precoMaior a b c d =  (funcaoMaior a b) `funcaoMaior` (funcaoMaior c d)

funcaoMaior :: Float -> Float -> Float
funcaoMaior x y
  | x > y = x
  | otherwise = y

{- 6. Escreva uma função chamada impar que devolva True, sempre que o resultado do produto de dois números inteiros for ímpar. -}

impar :: Int -> Int -> Bool
impar a b = if (funcaoMultiplicar a b) `mod` 2 == 1 then True else False

funcaoMultiplicar :: Int -> Int -> Int
funcaoMultiplicar a b = a * b

{- 7. Em Haskell existe o tipo par cuja assinatura tem a seguinte forma: 𝑝𝑎𝑟∷(𝐼𝑛𝑡,𝐼𝑛𝑡).
Escreva uma função em Haskell que devolva a soma dos componentes de um par de inteiros.-}

par :: (Int,Int) -> Int
par (a, b) = a + b

{- 8. Escreva uma função em Haskell que receba números reais (double) e devolva o resultado 
da equação 𝑥2 +𝑦/2 +𝑧.-}

segundoGrau :: Float -> Float -> Float -> Float
segundoGrau a b c = 2**a + b/2 + c

{- 9. Escreva uma função em Haskell chamada diagnostico que receba o peso do aluno e imprima 
um  diagnóstico  de  obesidade,  segundo  a  tabela  que  pode  ser  encontrada  no  link: 
Sobrepeso,  obesidade  e  obesidade  mórbida:  entenda  a  diferença  entre  os  três termos 
(cuidadospelavida.com.br).  Observe  que  este  diagnóstico  é  meramente  estatístico  e não tem
nenhum valor real, está sendo usado nesta questão apenas para a definição das faixas. Todo e
qualquer diagnóstico deve ser feito por um profissional médico. -}

diagnostico :: Float -> Float -> String
diagnostico a b
  | a / (b**2) < 17 = "Muito abaixo do peso"
  | a / (b**2)< 18.5 = "Abaixo do peso"
  | a / (b**2)< 25 = "Peso normal"
  | a / (b**2)< 30 = "Sobrepeso"
  | a / (b**2)<= 35 = "Obesidade Ieve"
  | a / (b**2)<= 40 = "Obesidade severa"
  | otherwise = "Obesidade morbida"



{- 10. Escreva uma função em Haskell chamada bissexto que receba um ano e devolva True se o ano for
bisexto sabendo que anos bissextos obedecem a seguinte regra: 
    Todos os anos que sejam divididos por 4
    Exceto os anos que são múltiplos de 100
    Exceto os anos que são múltiplos de 400
    1997 não é bissexto, 1900 não é bissexto e 2000 é bissexto -}

bissexto :: Int -> Bool
bissexto a
    | a `mod` 4 == 0 && a `mod` 400 == 0 = True
    | a `mod` 100 /= 0 && a `mod` 4 == 0 = True
    | otherwise = False 
  

main = do
    putStr "Func. 1: entrada: 54; resultado: "
    print(soma1 54)
    
    putStr "Func. 2: entrada: Felipe; resultado: "
    print(sempre "Felipe")
    
    putStr "Func. 3: entrada: 12 21 12; resultado: "
    print(treco 12 21 12)
    
    putStr "Func. 4: entrada: 100 50; resultado: "
    print(resto 100 50)
    
    putStr "Func. 5: entrada: 9 98 153 7.95; resultado: "
    print(precoMaior 9 98 153 7.95)
    
    putStr "Func. 6: entrada: 7 13; resultado: "
    print(impar 7 13)
    
    putStr "Func. 7: entrada: (15, 34); resultado: "
    print(par (15, 34))
    
    putStr "Func. 8: entrada: 10 20 30; resultado: "
    print(segundoGrau 10 20 30)
    
    putStr "Func. 9: entrada: 115 1.80; resultado: "
    print(diagnostico 115 1.80)
    
    putStr "Func. 10: entrada: 2024; resultado: "
    print(bissexto 2024)
    
