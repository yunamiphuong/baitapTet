//
//  fibonaci.swift
//  bt Tet logic
//
//  Created by Apple on 2/6/20.
//  Copyright © 2020 Apple. All rights reserved.
//

import Foundation
/*
 7. Nhập n từ bàn phím, in dãy số Finonaxi từ 0 đến n
 */


//func inFibonaci () {
//    print("nhập số n")
//    let n = Int(readLine() ?? "") ?? 0
//    var x : Int = 3
//    var arrFibonaci = [Int]()
//    if n < 0 {
//        inFibonaci()
//    } else if n < 2 {
//        print("1,1,2")
//    } else {
//        while x < n {
//            x +=
//        }
//    }
//}

func inFibonaci () {
    print("nhập số n")
    let n = Int(readLine() ?? "") ?? 0
    var arrFibonaci = [Int]()
    if n < 0 {
        inFibonaci()
    } else if n < 2 {
        print("1,1")
    } else {
        arrFibonaci = [1, 1]
        var previousFibonaci: Int = 1
        var previousOfPreviousFibonaci: Int = 1
        var x: Int = 0
        while x < n {
            x = previousFibonaci + previousOfPreviousFibonaci
            arrFibonaci.append(x)
            print(arrFibonaci)
            previousOfPreviousFibonaci = previousFibonaci
            previousFibonaci = x
        }
    }
    print(arrFibonaci)
}

