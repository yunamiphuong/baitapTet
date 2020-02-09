//
//  dem so nguyen to.swift
//  bt Tet logic
//
//  Created by Apple on 2/6/20.
//  Copyright © 2020 Apple. All rights reserved.
//


// 5. Đếm số nguyên tố trong đoạn [a, b]

import Foundation
func isPrimeNumber (n: Int) -> Bool{
    var soChiaHet = [Int]()
//    if n < 2 {
//        isPrimeNumber(n: _)
//    }
    
    for i in 2..<n {
        if n%i == 0 {
            soChiaHet.append(i)
        }
    }
    if soChiaHet.isEmpty {
        return true
    } else {
        return false
    }
}

func countPrimeNumber(a: Int, b: Int) {
//    if a < 2 || b < 2 {
//        countPrimeNumber(a: a, b: b)
//    }
    var countPrime: Int = 0
    for i in a...b {
        if isPrimeNumber(n: i) {
            countPrime += 1
        }
    }
    print(countPrime)
}

