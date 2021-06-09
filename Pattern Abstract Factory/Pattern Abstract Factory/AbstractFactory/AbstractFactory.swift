//
//  AbstractFactory.swift
//  Pattern Abstract Factory
//
//  Created by Григорий Виняр on 11.05.2021.
//

import Foundation

protocol AbstractFactory {
    func chooseChair() -> Chair
    func chooseTable() -> Table
}
