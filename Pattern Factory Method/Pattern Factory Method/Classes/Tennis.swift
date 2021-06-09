//
//  Tennis.swift
//  Pattern Factory method
//
//  Created by Григорий Виняр on 11.05.2021.
//

import Foundation

class Tennis: Doings {
    
    var name: String = "Tennis"
    
    func start() {
        print("You started tennis training")
    }
    
    func stop() {
        print("You stopped tennis training")
    }
}
