//
//  KitchenCair.swift
//  Pattern Abstract Factory
//
//  Created by Григорий Виняр on 11.05.2021.
//

import Foundation

class KitchenChair: Chair {
    func description() {
        print("You choose the kitchen chair")
    }
    
    var style: String = "Kitchen"
}
