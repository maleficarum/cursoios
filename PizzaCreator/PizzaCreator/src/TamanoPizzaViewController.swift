//
//  TamanoPizzaViewController.swift
//  PizzaCreator
//
//  Created by maleficarum on 10/12/15.
//  Copyright © 2015 maleficarum. All rights reserved.
//
import Foundation
import UIKit

class TamanoPizzaViewController: UIViewController {
    
    @IBOutlet weak var tamanoSelector: UISegmentedControl!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if(segue.identifier == "tipoMasa") {
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
        }
    }
    
    
}
