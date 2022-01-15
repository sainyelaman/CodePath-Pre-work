//
//  ViewController.swift
//  Prework
//
//  Created by Yelaman Sain on 1/15/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var billAmountTextField: UITextField!
    @IBOutlet weak var tipAmountLabel: UILabel!
    @IBOutlet weak var totalLabel: UILabel!
    
    // slider here
    @IBOutlet weak var tipSlider: UISlider!
    @IBOutlet weak var sliderLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func calcTipSlider(_ sender: UISlider) {
        let output = Double(tipSlider.value)
        let newValue = Float(0.01 * floor((output/0.01)+0.5))
        tipSlider.value = Float(newValue)
        
        let bill = Double(billAmountTextField.text!) ?? 0
        
        let tipPercentages = Double(tipSlider.value)
        let tip = bill * tipPercentages
        let total = bill + tip
        
        tipAmountLabel.text = String(format: "$%.2f", tip)
        totalLabel.text = String(format: "$%.2f", total)
        sliderLabel.text = String(format: "%.0f%%", tipSlider.value * 100.0)
    }
}

