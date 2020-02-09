//
//  tamGiacPascal.swift
//  bt Tet logic
//
//  Created by Apple on 2/6/20.
//  Copyright © 2020 Apple. All rights reserved.
//

import Foundation
/*
8. In tam giác Pascal
*/

//func tamGiacPascal() {
//    print("nhập chiều cao tam giác Pascal")
//    let h = Int(readLine() ?? "") ?? 0
//    if h < 0 {
//        tamGiacPascal()
//    } else if h <= 2 {
//        print(Array(repeating: "1", count: h))
//    } else {
//        var arrLine: [Int] = [1,2,1]
//        var x : Int = 0
//        for (index, value) in arrLine.enumerated(){
//            x = 1 +
//        }
//
//        print(
//    }
//
//}

// chữa
//In tam giác Pascal
func tamGiacPascal(){
    var h: Int = 0
    repeat {
        print("Nhập chiều cao của tam giác Pascal: ")
        h = Int(readLine() ?? "") ?? 1
    }while h > 10
    
    var arr = [[Int]](repeating: [Int](repeating: 0, count: 10), count: 10)
    
    print("Tam giác pascal là: ")
    for i in 0..<h{
        for j in 0...i{
            if i == j || j == 0{
                arr[i][j] = 1
                print("\(arr[i][j])", terminator: " ")
            }else{
                arr[i][j] = arr[i-1][j-1] + arr[i-1][j]
                print("\(arr[i][j])", terminator: " ")
            }
        }
        print()
    }
}
