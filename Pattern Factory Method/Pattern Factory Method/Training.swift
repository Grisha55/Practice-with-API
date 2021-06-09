//
//  Training.swift
//  Pattern Factory method
//
//  Created by Григорий Виняр on 11.05.2021.
//

import Foundation

enum Trainings {
    case Tennis, Football, Hockey
}

class Training {
    static let shared = Training()
    
    func chooseTraining(name: Trainings) -> Doings {
        
        switch name {
        
        case .Tennis: return Tennis()
            
        case .Football: return Football()
            
        case .Hockey: return Hockey()
        }
    }
}
