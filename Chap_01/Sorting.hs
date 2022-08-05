module Sorting where

-- ascending order
my_ascending_qsort [] = []
my_ascending_qsort (x:xs) = my_ascending_qsort smaller ++ [x] ++ my_ascending_qsort larger
        where
                smaller = [ a | a <- xs, a <= x ]
                larger = [ a | a <- xs, a > x ]



-- descending order
my_descending_qsort [] = []
my_descending_qsort (x:xs) = my_descending_qsort larger ++ [x] ++ my_descending_qsort smaller
        where
                smaller = [ a | a <- xs, a <= x ]
                larger = [ a | a <- xs, a > x ]