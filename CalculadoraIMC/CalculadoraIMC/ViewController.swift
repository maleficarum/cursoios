//
//  ViewController.swift
//  CalculadoraIMC
//
//  Created by maleficarum on 10/10/15.
//  Copyright © 2015 maleficarum. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var peso: UITextField!
    @IBOutlet weak var estatura: UITextField!
    
    @IBAction func calcularIMC(sender: AnyObject) {
        var IMC:Double;
        let pesoLocal : Double?
        pesoLocal = Double(peso.text!)!
        let estaturaLocal:Double = Double(estatura.text!)!
        IMC=pesoLocal!/(estaturaLocal*estaturaLocal)
        print("IMC \(IMC)")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        peso.delegate = self;
        estatura.delegate = self;
    }
    
    @IBAction func textFieldDoneEditing(sender:UITextField) {
        sender.resignFirstResponder()
    }
    
    @IBAction func backgroundTab(sender:UITextField) {
        sender.resignFirstResponder()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

