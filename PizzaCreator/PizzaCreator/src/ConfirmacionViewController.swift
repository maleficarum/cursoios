//
//  ConfirmacionViewController.swift
//  PizzaCreator
//
//  Created by maleficarum on 10/13/15.
//  Copyright © 2015 maleficarum. All rights reserved.
//
import Foundation
import UIKit

class ConfirmacionViewController: UIViewController {
    
    @IBOutlet weak var tamanoPizzaLabel: UILabel!
    @IBOutlet weak var tipoMasaLabel: UILabel!
    @IBOutlet weak var tipoQuesoLabel: UILabel!
    @IBOutlet weak var ingredientesLabel: UILabel!
    
    var tamanoPizza:String!
    var tipoMasa:String!
    var tipoQueso:String!
    var ingredientes:String!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        tamanoPizzaLabel.text = tamanoPizza
        tipoMasaLabel.text = tipoMasa
        tipoQuesoLabel.text = tipoQueso
        ingredientesLabel.text = ingredientes
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        /*if(segue.identifier == "tipoMasa") {
            var tamano:String?
            
            if(tamanoSelector.selectedSegmentIndex == 0) {
                tamano = "Chica"
            } else if(tamanoSelector.selectedSegmentIndex == 1) {
                tamano = "Mediana"
            } else if(tamanoSelector.selectedSegmentIndex == 2) {
                tamano = "Grande"
            }
            
            print("Tamano de pizza \(tamanoSelector.selectedSegmentIndex) \(tamano)" )
            
            (segue.destinationViewController as! TipoMasaPizzaViewController).tamano = tamano
        }*/
    }
    
    
}
