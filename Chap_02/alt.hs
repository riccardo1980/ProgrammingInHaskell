-- alternatives for last function
-- last [1,2,3,4,5] = 5

last1 :: [p] -> p
-- last1 [] = something like an exception, maybe 
last1 xs = reverse xs !! 0

last2 :: [p] -> p
-- last2 [] = something like an exception, maybe 
last2 xs = xs !! (length xs -1)

-- alternatives for init function
-- init [1,2,3,4,5] = [1,2,3,4]

init1 :: [p] -> [p]
init1 xs = take (length xs -1) xs

init2 :: [p] -> [p]
init2 xs = reverse (drop 1 (reverse xs))
