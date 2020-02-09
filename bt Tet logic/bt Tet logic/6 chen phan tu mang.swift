//
//  6 chen phan tu mang.swift
//  bt Tet logic
//
//  Created by Apple on 2/6/20.
//  Copyright © 2020 Apple. All rights reserved.
//

import Foundation
/*
6. Chèn phần tử có giá trị X vào mảng sao cho mảng vẫn có thứ tự tăng dần.
*/


func chenPhanTuMangTangDan (x: Int) {
    var arr = [-22, 0 ,3,55,124, 1000]
    for (index,value) in arr.enumerated() {
        if x < value {
            arr.insert(x, at: index)
            break
        }
    }
     print(arr)
}

/// chữa
//Chèn phần tử có giá trị X vào mảng sao cho mảng vẫn có thứ tự tăng dần.
func chenX(_ input: [Int]) {
    print("Nhập số cần chèn:")
    let x = Int(readLine()!)!
    let array = input.sorted()
    let smallerThanX = array.filter {$0 <= x}
    let greaterThanX = array.filter {$0 > x}
    print(smallerThanX + [x] + greaterThanX)
    chenX(array)
}

//// bài của Nam (sai)
//func insertToArray(){
//    var arr = [1,2,4,6,10,16]
//    print(arr)
//    print("nhap vao 1 so")
//    let n = Int(readLine() ?? "") ?? 0
//    for (index, value) in arr.enumerated(){
//        if n > value && n < arr[index + 1]{
//            arr.insert(n, at: index + 1)
//        }
//    }
//    print(arr)
//}
