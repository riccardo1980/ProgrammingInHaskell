import Data.Typeable

-- myAdd :: Num a => a -> a -> a -> a
myAdd a b c = a+b+c

-- myCopy :: a -> (a,a)
myCopy x = (x,x)

-- myApply :: (a -> b) -> a -> b
myApply f a = f a 

main = do

    -- 1
    let list_of_chars =['a', 'b', 'c']
    print (typeOf  list_of_chars) -- will print [Char]

    let tuple_of_three_chars = ('a', 'b', 'c')
    print (typeOf tuple_of_three_chars) -- will print (Char,Char,Char)

    let list_of_tuple_bool_char = [(False,'0'),(True, '1')]
    print (typeOf list_of_tuple_bool_char) -- will print [(Bool,Char)]

    let tuple_of_list_bool_list_char = ([False, True], ['0','1'])
    print (typeOf tuple_of_list_bool_list_char) -- will print ([Bool],[Char])
    
    -- let list_function_list_list = [tail, init, reverse]
    -- print (typeOf1 list_function_list_list) -- will print [[a]->[a]]
    -- this is not easy to print: use ghci and issue
    -- :type [tail, init, reverse]

    -- 2
    let bools = [True, False] 
    print (typeOf bools) -- is of [Bools] type

    -- let nums = [[1,2],[1,2,3]]
    -- print (typeOf nums) -- is of [[Num]] type
    -- this is not easy to print: use ghci and issue
    -- :type [[1,2],[1,2,3]]

    -- myAdd is of type Num a => a -> a -> a -> a
    -- myCopy is of type a -> (a, a)
    -- myApply is of type (a -> b) -> a -> b

    -- 3
    -- second xs = head (tail xs) is of type [a] -> a
    -- swap (x,y) = (y,x) is of type (a,b) -> (b,a)
    -- pair x y = (x,y) is of type a -> b -> (a,b)
    -- myDouble x = x*2 is of type Num a => a -> a
    -- palindrome xs = reverse xs == xs is of type Eq a => [a] -> Bool
    -- twice f x = f (f x) is of type a => (a -> a) -> a -> a