//
//  BadRoomChair.swift
//  Pattern Abstract Factory
//
//  Created by Григорий Виняр on 11.05.2021.
//

import Foundation

class BadRoomChair: Chair {
    func description() {
        print("You choose the badroom chair")
    }
    
    var style: String = "BadRoom"
}
