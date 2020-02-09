//
//  in hinh sao 2.swift
//  bt Tet logic
//
//  Created by Apple on 2/2/20.
//  Copyright © 2020 Apple. All rights reserved.
//

import Foundation

func drawStar2 () {
    print("Nhap chieu cao (so le)")
    let h = Int(readLine() ?? "") ?? 0
    if h % 2 == 0 {
        drawStar2()
    } else {
        for i in 1...(h-1)/2 {
            let star = Array(repeating: "*", count: i*2 - 1)
            let space = Array(repeating: "-", count: ((h-1) - (i*2 - 1))/2)
            let line = space + star + space
            print(line.joined())
        }
        for i in (1...(h-1)/2 - 1).reversed() {
            let star = Array(repeating: "*", count: i*2 - 1)
            let space = Array(repeating: "-", count: ((h-1) - (i*2 - 1))/2)
            let line = space + star + space
            print(line.joined())
        }
        
    }
}

// chữa
func drawStar2cach2 () {
    print("Nhap chieu cao (so le)")
    let h = Int(readLine() ?? "") ?? 0
    var n = h/2 + 1
    var range = 0
    
    for i in 1...h{
        for j in 1...h{
            if j >= n - range && j <= n + range {
                print("*", terminator: "")
            }else{
                print(" ", terminator: "")
            }
        }
        
        if i >= n {
            range -= 1
        }else {
            range += 1
        }
        print()
    }
}

