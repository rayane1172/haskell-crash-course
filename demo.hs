import Distribution.Simple.Program.HcPkg (list)
import Distribution.Simple.InstallDirs (InstallDirTemplates)
-- types :type (Bool - char - string - int - integer - float - double )
-- operators - + * / ^ = == < > && || not . ? \ : # $ % !! 
-- function (sum - fact - toupper)


-- function1 x y = x+y




-- fact :: Int -> Int
-- fact 0 = 1  -- base case
-- fact n= n * fact (n-1)

-- condition (sig num )
-- guarded equations ( Max from 3 numbers - rangeProduct - sum fact - hoMa )
-- Case Expression
-- case expression of 
            -- pattern -> result 
            -- pattern -> result
            -- pattern -> result

sig :: Int -> String
sig n = if n>0 then "+" else "-"

-- TODO: type signature before every-function
equal :: Int -> Int -> Int -> Int
equal x y z = if (x > y && x > z) then x
               else
                     if y > z then y else z
         -- way to call it -> print (equal 10 50 70)


--todo using guards :
equalGuards :: Int -> Int -> Int -> Int
equalGuards x y z
   |x>y && x>z = x
   |y>z = y
   |otherwise = z

--todo switch case :
findNumberSwitch :: Int -> String
findNumberSwitch n =
   case n of
      1 -> "n = 1"
      2 -> "n = 2"


-- function::Int->Int->Int
-- function x y = x+y

-- fact::Int->Int
-- fact 1 = 1
-- fact n = n * fact (n-1)


--todo tuple , List
-- ! Tuple ( fst - snd - fibonacci )
-- List (contains - show - read - large list - []++[]  )
      -- 0:[] - []!! - head - tail - last - null - take -
      -- replicate 2 5 -zip [1 .. 5 ] ['a' .. 'h'] - length 

myTuple :: (Int, String, String)
myTuple = (42, "hello","rayane")
-- ! accessing elements in tuple
-- let firstElement = fst myTuple
-- let secondElement = snd myTuple

thirdElement :: (a ,b ,c) -> c
thirdElement (_, _, z) = z

-- ! when you passing a tuple as a parameter you should use comma
test :: (Int, Int)-> Int
test (a, _) = a
-- print (test (1,5) )

--todo List :
list1 = [1,2,3,4,5]
list2 = [1,3]
--    print list1 -> all
--    print (head list1) [0]
--    print (tail list1) --> all elements without [0]
--    print (last list1)
--    print (list1 !! 1) -> for index
-- print (null [])
-- print (null list1)
--  print (take 3 list1)
-- ! comparision btw lists ==> print (list1 > list2)

--todo generate list : 
glist = [1 .. 15]
gglist = [0,2 .. 10] -- ! pair elements
ggglist = [1,3 .. 10] -- ! impaire elements

nlist = [0,5 .. 50]

--todo concatenation with list
list3 = list1++list2
-- 5:[2, 3] ==> 
-- todo length
-- print (length list3)
-- todo show 
-- todo read "5"  +2 ==> 7


--todo list examples :
-- print (head [[1, 2], [3, 4]])

-- ? head function manually
-- head2::[Int]-> Int
-- head2 (h:hh) = h

-- ? length with recursive : 
-- taille :: [Int] -> Int
-- taille (_ : xs) = 1 + taille xs -- ! Recursively counts the elements in the list
-- taille [] = 0 -- ! Base case: the length of an empty list is 0

-- ? whithout first element 


-- ! get all list without head
-- taille::[Int] -> [Int]
-- taille (x:xs) = xs


-- ! get last element in list :
last_element::[Int] -> Int
last_element [x] = x
last_element (x:xl) = last_element xl

-- ! reverse a list 
reverse_list:: [Int]-> [Int]
reverse_list[] = []
reverse_list(x:xl) = reverse_list xl ++ [x]


-- ! get the sum of a list
sumlist::[Int] -> Int
sumlist [] = 0
sumlist(x:xl) = x + sumlist xl


-- ! length of list 
length_list:: [Int] -> Int
length_list [] = 0
length_list (x : xl) = 1 + length_list xl


-- ! take a part of a list
takex::Int -> [Int] -> [Int]
takex 0 _ = []
takex n (x:xl) = x : takex (n-1) xl




-- ! factorial
fact::Int -> Int
fact 0 = 1
fact x = x * fact(x - 1)

-- ! sum of factorial of all elements in a list
sum_list_facto::[Int] -> Int
sum_list_facto [] = 0
sum_list_facto (x:xl) = fact x + sum_list_facto xl


-- ! max in a list 

maxList :: [Int] -> Int
maxList [] = 0
maxList [x] = x
maxList (x:y:xl)
      |x>y = maxList (x:xl)
      |otherwise = maxList (y:xl)


-- ! Local definitions : where

functionSum::Int->Int->Int
functionSum x y = f1 + f2
      where f1 = x + y
            f2 = x * y
-- ! diff btw where and let : u can use where with Guards ( | | | .. )

-- ! m2 : let
functionSum2::Int-> Int -> Int
functionSum2 x y = let
      f1 = x + y
      f2 = x * y
      in f1 + f2

-- ! some help comand in ghci (interactive cmd line ) ->  :r , :load demo.hs ,:edit demo.hs ,:type True, :?


-- ! List Comprehensions

evenNumbers::[Int]->[Int]
evenNumbers xl = [ x | x<-xl , mod x 2 == 0 ]
-- * x<-xl : this part iterates over each element "x" in the list xl
-- * take x from xl list , then check the condition of modulos, if true : take it to the list else not throw it

addPairs::[(Int,Int)]->[Int]
addPairs xl = [ x+y | (x,y)<- xl ]

sumZeroList::[Int] -> Int
sumZeroList xl = length ([ x | x <- xl, x == 0])

-- ! concatenation of list of lists (like a matrix)
con :: [[Int]]-> [Int]
con xxl = [ x | xl <- xxl, x<- xl ]

sumFactorial::[Int] -> Int
sumFactorial xl = sum ([ fact x| x  <-xl])

-- ! QUICK SORT IMPLEMENTATION

quickSort::[Int]-> [Int]
quickSort [x] = [x]
quickSort [] = []
quickSort (x:xl)  = quickSort([ n | n <- xl, n <= x ]) ++ [x] ++ quickSort ([ n | n <- xl, n > x ])


forTry::[Int] -> [Int]
forTry (x:xl) = [1,2] ++ [x] ++ [4,5]



my_list::[Int] -- ! declaration of the list for testing in the main
my_list = [0,5 .. 20]

main :: IO ()
main = do
      print my_list
      print (functionSum2 2 3)

