


-- main :: IO ()
-- main = do
--    putStrLn "hi, i'm haskell"

-- Todo -> read input :
-- main :: IO()
-- main = do
--    putStrLn "Enter a number :"
--    input<-getLine
--    let number = read input :: Int -- convert input to an Int
--    putStrLn ("you entred : " ++ show number) -- convert nbr to string to print it


adder :: Int -> (Int -> Int)
adder x = \y -> x + y





data Personne = Personne {nom :: String, age :: Int, ville :: String}

personne1 :: Personne
personne1 = Personne {nom = "rayane",
                  age = 30,
                  ville = "Paris"}

-- dictionnaire our le reprtoire telephonique
-- -- phoneBook :: Map.Map String String
-- phoneBook = Map.fromList [
--    ("rayane", "067300000"),
--    ("yahia","06770000")]

-- getPhoneNumber :: String -> Maybe String
-- getPhoneNumber name = Map.lookup name phoneBook






main :: IO ()
main = do
  putStrLn "Entrez le premier nombre :"
  input1 <- getLine
  let nombre1 = read input1 :: Float

  putStrLn "Entrez le deuxième nombre :"
  input2 <- getLine
  let nombre2 = read input2 :: Float

  putStrLn "Choisissez une opération (+, -, *, /) :"
  operation <- getLine

  let resultat = case operation of
        "+" -> nombre1 + nombre2
        "-" -> nombre1 - nombre2
        "*" -> nombre1 * nombre2
        "/" ->
          if nombre2 /= 0
            then nombre1 / nombre2
         else error "Division par zéro!"
        _ -> error "Opération non reconnue"

  putStrLn ("Le résultat est : " ++ show resultat)


-- myList = [1,2,3,4,5]
-- doubleElement :: [Int] -> [Int]
-- doubleElement = map (*2) myList
-- -- OUTPUT : [2,4,6,8,10]

-- filterPositive = filter (\x -> x > 0) --filter avec lambda exp

-- sumWithFold ::[Int] -> [Int]
-- sumWithFold = foldr (+) 0 [1, 2, 3, 4] -- calculer la somme de la list 