//
//  Doings.swift
//  Pattern Factory method
//
//  Created by Григорий Виняр on 11.05.2021.
//

import Foundation

protocol Doings {
    var name: String { get }
    
    func start()
    func stop()
}
