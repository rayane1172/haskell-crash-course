import Graphics.Win32 (eS_AUTOHSCROLL, INT)
import Distribution.Simple.Program.HcPkg (list)
import System.Win32 (xBUTTON1)
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

--TODO: type signature before every-function
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
-- taille (_ : xs) = 1 + taille xs -- Recursively counts the elements in the list
-- taille [] = 0 -- Base case: the length of an empty list is 0

-- ? whithout first element 

my_list::[Int] -- ! declaration of the list
my_list = [0,5 .. 20]

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
takex:: [Int] -> Int
takex [] = 0
takex(x:xl) = 1 + takex xl




main :: IO ()
main = do
      print my_list
      print (takex my_list )



