//
//  main.swift
//  Carpet
//
//  Created by 김소진 on 2020/07/31.
//  Copyright © 2020 sojin. All rights reserved.
//

import Foundation

func solution(_ brown:Int, _ yellow:Int) -> [Int] {
    let sum = brown + yellow
    var x = Int()
    var y = Int()
    for i in 1...sum{
        if sum%i == 0{
            x = sum/i
            y = i
        }
        if (x-2)*(y-2) == yellow {
            break
        }
    }
    return [x,y]
}
