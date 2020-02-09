//
//  in hinh sao 1.swift
//  bt Tet logic
//
//  Created by Apple on 2/2/20.
//  Copyright © 2020 Apple. All rights reserved.
//

import Foundation

func drawStar1() {
    print("Nhap chieu cao")
    let h = Int(readLine() ?? "0") ?? 0
    if h % 2 != 0 {
        drawStar1()
    } else {
        for i in 1...h/2 {
            let star = Array(repeating: "*", count: i)
            let space = Array(repeating: "-", count: h/2 - i)
            let line = star + space
            print(line.joined())
            
        }
        for i in (1...h/2).reversed() {
            //            let star = Array(repeating: "*", count: h/2 + 1 - i)
            //            let space = Array(repeating: "-", count: i - 1)
            //            let line = star + space
            //            print(line.joined())
            
            let star = Array(repeating: "*", count: i)
            let space = Array(repeating: "-", count: h/2 - i)
            let line = star + space
            print(line.joined())
            
        }
    }
}

// chữa
func drawStar1cach2() {
    print("Nhap chieu cao")
    let h = Int(readLine() ?? "0") ?? 0
    for i in 0...h {
        if i < h/2 {
            for _ in 0...i {
            print("*", terminator:"")
            }
            print()
        }
        
        if i > h/2 {
            for _ in i...h {
                print("*",terminator: "")
            }
            print()
        }
    }

}
