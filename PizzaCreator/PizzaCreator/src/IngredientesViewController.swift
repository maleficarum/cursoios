//
//  IngredientesViewController.swift
//  PizzaCreator
//
//  Created by maleficarum on 10/12/15.
//  Copyright © 2015 maleficarum. All rights reserved.
//

import Foundation
import UIKit

class IngredientesViewController: UIViewController {
    
    var tamano:String!
    var masa:String!
    var queso:String!
    
    
    @IBOutlet weak var tamanoLabel: UILabel!
    @IBOutlet weak var masaLabel: UILabel!
    @IBOutlet weak var quesoLabel: UILabel!

    @IBOutlet weak var ingredientesTextBox: UITextView!
    override func viewDidLoad() {
        super.viewDidLoad()

        tamanoLabel.text = tamano
        masaLabel.text = masa
        quesoLabel.text = queso
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if(segue.identifier == "confirmacion") {
            
            (segue.destinationViewController as! ConfirmacionViewController).tamanoPizza = tamano
            (segue.destinationViewController as! ConfirmacionViewController).tipoMasa = masa
            (segue.destinationViewController as! ConfirmacionViewController).tipoQueso = queso
            (segue.destinationViewController as! ConfirmacionViewController).ingredientes = ingredientesTextBox.text
        }
    }
    
        
}

