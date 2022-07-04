//
//  ViewController.swift
//  Tipsy
//
//  Created by Angela Yu on 09/09/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

//import UIKit

class CalculateViewController: UIViewController {
    
    @IBOutlet weak var billTextField: UITextField!
    @IBOutlet weak var zeroPctButton: UIButton!
    @IBOutlet weak var tenPctButton: UIButton!
    @IBOutlet weak var twentyPctButton: UIButton!
    @IBOutlet weak var splitNumberLabel: UILabel!
    
    var calculateBrain=CalculateBrain()
    
    @IBAction func tipChanged(_ sender: UIButton) {
        billTextField.endEditing(true)
        zeroPctButton.isSelected = false
        tenPctButton.isSelected = false
        twentyPctButton.isSelected = false
        sender.isSelected = true
        calculateBrain.setPercent(sender.currentTitle!)
    }
    @IBAction func stepperValueChanged(_ sender: UIStepper) {
        splitNumberLabel.text = String(format:"%.0f",sender.value)
        calculateBrain.setPeople(sender.value)
    }
    @IBAction func calculatePressed(_ sender: UIButton) {
        calculateBrain.calculate(billTextField.text!)
        performSegue(withIdentifier: "goToResult", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier=="goToResult"{
            let destinationVC = segue.destination as! ResultViewController
            destinationVC.people = Int(calculateBrain.people)
            destinationVC.tip = Int(calculateBrain.percent*100)
            destinationVC.res = calculateBrain.result
        }
    }
}

