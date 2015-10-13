//
//  TamanoPizzaViewController.swift
//  PizzaCreator
//
//  Created by maleficarum on 10/12/15.
//  Copyright © 2015 maleficarum. All rights reserved.
//

import Foundation
import UIKit

class TipoMasaPizzaViewController:UIViewController {
    
    @IBOutlet weak var tamanoLabel: UILabel!
    var tamano:String!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        tamanoLabel.text = tamano
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}
