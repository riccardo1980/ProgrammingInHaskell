module My_product where

my_product :: [Int] -> Int
my_product [] = 1
my_product (n:ns) = n * my_product (ns)