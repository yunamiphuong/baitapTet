//
//  9 chuyen chu caplock.swift
//  bt Tet logic
//
//  Created by Apple on 2/6/20.
//  Copyright © 2020 Apple. All rights reserved.
//

import Foundation
// 9. Đổi kí tự đầu tiên của mỗi từ thành chữ in hoa

// bài của Toàn
func Upercase(){
    print(" nhap ho ten cua ban")
    var  hoten = readLine() ?? " "
    let hoTen = hoten.components(separatedBy: " ")
    if hoTen.count == 1{
        print(hoTen[0].capitalized)
    }else if hoTen.count == 2{
        print(hoTen[0].capitalized + hoTen[1].capitalized )
    }else{
        for i in 0...hoTen.count-1{
            print(hoTen[i].capitalized ,terminator : " ")
        }
    }
    
}

// chữa

