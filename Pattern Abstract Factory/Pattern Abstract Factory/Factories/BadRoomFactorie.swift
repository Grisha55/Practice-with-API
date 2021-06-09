//
//  BadRoomFactorie.swift
//  Pattern Abstract Factory
//
//  Created by Григорий Виняр on 11.05.2021.
//

import Foundation

class BadRoomFactorie: AbstractFactory {
    func chooseChair() -> Chair {
        return BadRoomChair()
    }
    
    func chooseTable() -> Table {
        return BadRoomTable()
    }
    
    
}
