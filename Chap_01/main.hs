module Main where

import My_product
import Sorting

main = do
        let input = [1,2,3]
        let out = my_product input
        print out

        let t1 = [2,2,3,1,1]
        let out1 = my_ascending_qsort t1
        print out1
        let out2 = my_descending_qsort t1
        print out2