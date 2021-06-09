//
//  kitchenTable.swift
//  Pattern Abstract Factory
//
//  Created by Григорий Виняр on 11.05.2021.
//

import Foundation

class KitchenTable: Table {
    func description() {
        print("You choose kitchen table")
    }
    
    var style: String = "Kithen"
}
