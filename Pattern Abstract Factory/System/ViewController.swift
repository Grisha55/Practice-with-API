//
//  ViewController.swift
//  Pattern Abstract Factory
//
//  Created by Григорий Виняр on 11.05.2021.
//

import UIKit

class ViewController: UIViewController {
    
    var chair: Chair?
    var table: Table?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let chair = KitchenFactory().chooseChair()
        chair.description()
    }


}

