// Playground - noun: a place where people can play

import UIKit



func whoknows(s1: Int,s2: Int) -> Bool  {
    if (s1 % 2) == 0{
        return s1 < s2
    }
    return s1 > s2
}

func sorted(var num: [Int], somename: (Int,Int) -> Bool) -> [Int]{
    var s1: Int
    var s2: Int
    for i in 1..<7 {
        s1 = num[i]
        s2 = num[i - 1]
        for(var k: Int = i; k > 0 && somename(s1,s2); k--){
            num[k] += num[k-1]
            num[k-1] = num[k] - num[k-1]
            num[k] -= num[k-1]
            if k > 1 {
                s2 = num[k-2]
            }
        }
    }
    return num
}

let num = [3,4,5,6,7,8,9]

sorted(num , whoknows)