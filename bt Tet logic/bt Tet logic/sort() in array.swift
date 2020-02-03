//
//  sort() in array.swift
//  bt Tet logic
//
//  Created by Apple on 2/2/20.
//  Copyright © 2020 Apple. All rights reserved.
//

import Foundation
func sortInArray() {
   var arr: [Int] = [2, 9, 0, -4, -23, 666, 102]
    arr.sort(by: >)
    print(arr)
}

func sortAlphabet() {
    var arr: [String] = ["blue", "black", "alpha", "boo", "cat"]
    arr.sort(by: >)
    print(arr)
}
