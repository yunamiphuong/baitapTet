//
//  amstrong number.swift
//  bt Tet logic
//
//  Created by Apple on 2/3/20.
//  Copyright © 2020 Apple. All rights reserved.
//

import Foundation

// chữa
func isSoAmstrong(n: Int) -> Bool {
    
    let arr = Array(String(n))
    var numbers = [Float]() // tương đương var numbers : [Float] = []
    
    numbers = arr.map { (i: Character) -> (Float) in
        Float(String(i))!
    }
    
    var tongAms: Float = 0
    for i in numbers {
        tongAms += powf(i, Float(numbers.count))
    }
    
    if Float(n) == tongAms {
        return true
    }else{
        return false
    }
}

func lietKeSoAmstrong() {
    for i in 1...1000 {
        if isSoAmstrong(n: i) {
            print(i)
        }
    }
}
