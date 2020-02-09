//
//  10 kiem tra chuoi doi xung.swift
//  bt Tet logic
//
//  Created by Apple on 2/6/20.
//  Copyright © 2020 Apple. All rights reserved.
//

import Foundation
// chữa kiểm tra chuỗi đối xứng
func kiemTraChuoi(){
    print("Nhập chuỗi không dấu: ")
    let str = readLine() ?? ""
    if isDoiXung(str) {
        print("Chuỗi \(str) là đối xứng")
    }else{
        print("Chuỗi \(str) là không đối xứng")
    }
    
    kiemTraChuoi()
}

func isDoiXung(_ str: String) -> Bool{
    var arr: [Character] = []
    for i in str {
        arr.append(i)
    }
    
    for i in 0..<arr.count/2{
        if arr[i] != arr[arr.count-i-1]{
            return false
        }
    }
    return true
}
