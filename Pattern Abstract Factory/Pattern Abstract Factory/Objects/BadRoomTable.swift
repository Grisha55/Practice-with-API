//
//  BadRoomTable.swift
//  Pattern Abstract Factory
//
//  Created by Григорий Виняр on 11.05.2021.
//

import Foundation

class BadRoomTable: Table {
    func description() {
        print("You choose the badroom table")
    }
    
    var style: String = "BadRoom"
}
