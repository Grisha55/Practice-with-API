//
//  Hockey.swift
//  Pattern Factory method
//
//  Created by Григорий Виняр on 11.05.2021.
//

import Foundation

class Hockey: Doings {
    var name: String = "Hockey"
    
    func start() {
        print("Start to play hockey")
    }
    func stop() {
        print("Stop to play hockey")
    }
}
