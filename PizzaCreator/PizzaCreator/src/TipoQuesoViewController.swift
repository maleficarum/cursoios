//
//  TipoQuesoViewController.swift
//  PizzaCreator
//
//  Created by maleficarum on 10/12/15.
//  Copyright © 2015 maleficarum. All rights reserved.
//

import Foundation
import UIKit

class TipoQuesoPizzaViewController:UIViewController {
    
    var tamano:String!
    var tipoMasa:String!
    
    @IBOutlet weak var tipoQuesoSelector: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if(segue.identifier == "ingredientes") {
            var tipoQueso:String?
            
            if(tipoQuesoSelector.selectedSegmentIndex == 0) {
                tipoQueso = "Mozzarella"
            } else if(tipoQuesoSelector.selectedSegmentIndex == 1) {
                tipoQueso = "Cheddar"
            } else if(tipoQuesoSelector.selectedSegmentIndex == 2) {
                tipoQueso = "Parmesano"
            } else if(tipoQuesoSelector.selectedSegmentIndex == 2) {
                tipoQueso = "Sin queso"
            }
            
            print("TIPO queso \(tipoQuesoSelector.selectedSegmentIndex) \(tipoQueso)" )
            
            (segue.destinationViewController as! IngredientesViewController).tamano = tamano
            (segue.destinationViewController as! IngredientesViewController).masa = tipoMasa
            (segue.destinationViewController as! IngredientesViewController).queso = tipoQueso
        }
    }
    
}
