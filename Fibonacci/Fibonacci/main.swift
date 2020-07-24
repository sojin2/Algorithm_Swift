//
//  main.swift
//  Fibonacci
//
//  Created by 김소진 on 2020/07/15.
//  Copyright © 2020 sojin. All rights reserved.
//

import Foundation

func solution(_ n:Int) -> Int {
  var fibonacci: [Int] = [0, 1]
  
  for i in 2...n {
    fibonacci.append((fibonacci[i-2] + fibonacci[i-1]) % 1234567)
  }
  
  return fibonacci[n]
}
