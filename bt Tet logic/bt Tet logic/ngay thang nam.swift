//
//  ngay thang nam.swift
//  bt Tet logic
//
//  Created by Apple on 2/2/20.
//  Copyright © 2020 Apple. All rights reserved.
//

import Foundation
//3. Viết chương trình nhập ngày, tháng, năm.
//–   Tháng đó có bao nhiêu ngày
//–   Tìm ngày trước ngày vừa nhập.
//–   Tìm ngày sau ngày vừa nhập


func timNgayThangNam() {
    print("Nhap ngay")
    let ngay = Int(readLine() ?? "") ?? 0
    if ngay > 31 || ngay < 0 {
        timNgayThangNam()
    }
    print("Nhap thang")
    let thang = Int(readLine() ?? "") ?? 0
    if thang > 12 || thang < 0 {
        timNgayThangNam()
    }
    print("Nhap nam")
    let nam = Int(readLine() ?? "") ?? 0
    if nam < 0 {
        timNgayThangNam()
    }
    
    var soNgay: Int = 0
    var ngayTruoc: Int = 0

    var ngaySau: Int = 0

    
    //tính số ngày của tháng
    soNgay = timSoNgay(thang: thang, nam: nam)
    
    
    
    // tìm ngày liền trước
        if ngay != 1 {
            ngayTruoc = ngay - 1
        } else {
            ngayTruoc = timSoNgay(thang: thang - 1, nam: nam)
        }
   
    // tìm ngày liền sau
    
    if ngay == soNgay {
        ngaySau = 1
    } else {
        ngaySau = ngay + 1
    }
    
    print("Thang nay co \(soNgay) ngày")
    print("Ngay lien truoc: \(ngayTruoc)")
    print("Ngay lien sau: \(ngaySau)")
}

func timSoNgay( thang: Int, nam: Int) -> Int {
    // tính số ngày
    var soNgay :Int = 0
    let arrayThang31Ngay : [Int] = [1,3,5,7,8,10,12]
    
    if nam%4 == 0 && nam%100 != 0 || nam%400 == 0 {
        if thang == 2 {
            soNgay = 29
        } else {
            if arrayThang31Ngay.contains(thang) {
                soNgay = 31
            } else {
                soNgay = 30
            }
        }
    } else {
        if thang == 2 {
            soNgay = 28
        } else {
            if arrayThang31Ngay.contains(thang) {
                soNgay = 31
            } else {
                soNgay = 30
            }
        }
    }
    return soNgay
}
