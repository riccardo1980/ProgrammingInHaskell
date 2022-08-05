{-
Since -> associates to the right, the following is equivalent to
add :: Int -> Int -> Int
-} 
add :: Int -> (Int -> Int)
add x y = x+y


main = do
    let incr = add 1
    let res = incr 4
    print res
