// Playground - noun: a place where people can play

import UIKit

let nums = [3, 4, 5, 6, 7, 8, 9]
var S1 = [Int]() //To store s1 values
var S2 = [Int]() //To store S2 values

func whoknows(s1: Int, s2: Int) -> Bool{
    S1.append(s1)
    S2.append(s2)
    if((s1 % 2) == 0){
        return s1 < s2
    }
    return s1 > s2
}

var something = sorted(nums, whoknows)

S1
S2

// I tried to print in whoknows function. But it gives how many times it runs.
//So I decided to append all values into array and print it finally