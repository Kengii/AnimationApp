//
//  Singltone.swift
//  AnimationApp
//
//  Created by Владимир Данилович on 25.02.22.
//

import Foundation
class Array {
    private init() {}
    
    static let shared = Array()
    
    var array: [String] = []
}
