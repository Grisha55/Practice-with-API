//
//  KitchenFactory.swift
//  Pattern Abstract Factory
//
//  Created by Григорий Виняр on 11.05.2021.
//

import Foundation

class KitchenFactory: AbstractFactory {
    func chooseChair() -> Chair {
        return KitchenChair()
    }
    
    func chooseTable() -> Table {
        return KitchenTable()
    }
    
    
}
