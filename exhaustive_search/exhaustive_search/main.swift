//
//  main.swift
//  exhaustive_search
//
//  Created by 김소진 on 2020/07/24.
//  Copyright © 2020 sojin. All rights reserved.
//

import Foundation

import Foundation

func solution(_ n: Int) -> Int {
    var count = 0
    var array = Array.init(repeating: false, count: n+1) //초기화
    
    for i in 2...n {
        if array[i] == false {
            count += 1
            
            for j in stride(from: i, through: n, by: i) {
               array[j] = true
            }
        }
    }
    return count
}
