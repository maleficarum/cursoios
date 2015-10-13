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
    @IBOutlet weak var tipoMasaSelector: UISegmentedControl!

    var tamano:String!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        tamanoLabel.text = tamano
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if(segue.identifier == "tipoQueso") {
            var tipoMasa:String?
            
            if(tipoMasaSelector.selectedSegmentIndex == 0) {
                tipoMasa = "Delgada"
            } else if(tipoMasaSelector.selectedSegmentIndex == 1) {
                tipoMasa = "Crujiente"
            } else if(tipoMasaSelector.selectedSegmentIndex == 2) {
                tipoMasa = "Gruesa"
            }
            
            print("TIPO MASA \(tipoMasaSelector.selectedSegmentIndex) \(tipoMasa)" )
            
            (segue.destinationViewController as! TipoQuesoPizzaViewController).tamano = tamano
            (segue.destinationViewController as! TipoQuesoPizzaViewController).tipoMasa = tipoMasa
        }
    }

}
