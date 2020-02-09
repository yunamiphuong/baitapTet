//
//  11 nhap mang so nguyen.swift
//  bt Tet logic
//
//  Created by Apple on 2/6/20.
//  Copyright © 2020 Apple. All rights reserved.
//

import Foundation
// Nam
func nhapMang(){
    print("nhập vào số phần tử : ")
    let n = Int(readLine() ?? "") ?? 0
    var a = [Int](repeating: 0, count: n)
    for i in 0..<n{
        print("nhập phần tử thứ \(i+1)")
        a[i] = Int(readLine() ?? "") ?? 0
    }
    print(a)
}

// chữa
func inputMangSoNguyen(){
    print("Nhập vào dãy số nguyên")
    let str = readLine() ?? ""
    
    let strArray = str.components(separatedBy: " ")
    var numberArray: [Int] = []
    for i in strArray {
        numberArray.append(Int(i) ?? 0)
    }
    
    print(numberArray)
}
