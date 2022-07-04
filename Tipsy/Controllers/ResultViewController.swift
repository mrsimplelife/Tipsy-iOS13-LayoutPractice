//
//  ResultViewController.swift
//  Tipsy
//
//  Created by 박윤철 on 2022/07/04.
//  Copyright © 2022 The App Brewery. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {

    
    
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var settingsLabel: UILabel!
    
    var tip = 10
    var people = 2
    var res = "0.0"
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        settingsLabel.text = "Split between \(people) people, with \(tip)% tip."
        totalLabel.text = res
    }


    @IBAction func recalculatePressed(_ sender: UIButton) {
        dismiss(animated: true)
    }
}
