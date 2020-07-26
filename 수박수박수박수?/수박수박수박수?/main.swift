//
//  main.swift
//  수박수박수박수?
//
//  Created by 김소진 on 2020/07/26.
//  Copyright © 2020 sojin. All rights reserved.
//

import Foundation
func solution(_ n:Int) -> String {
    return String(String(repeating: "수박", count: (n+1) / 2).prefix(n))
}
