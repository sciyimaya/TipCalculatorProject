//
//  ViewController.swift
//  TipCalculator
//
//  Created by Ceyda Iyimaya on 1/28/21.
//  Copyright © 2021 Ceyda Iyimaya. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var billAmountTextField: UITextField!
    
    
    @IBOutlet weak var tipAmountLabel: UILabel!
    
    
    @IBOutlet weak var tipControl: UISegmentedControl!
    
    @IBOutlet weak var totalLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func calculateTip(_ sender: Any) {
        //get the initial bill amount
        //calculate tips
        //update the tip and total labels
        let billAmount = Double(billAmountTextField.text!) ?? 0
        let percentages = [0.15, 0.18, 0.2]
        let tip = billAmount * percentages[tipControl.selectedSegmentIndex]
        let total = billAmount + tip
        tipAmountLabel.text = String(format: "$%.2f", tip)
        totalLabel.text = String(format: "$%.2f", total)
    }
    
    @IBAction func tipCalculatorBillField(_ sender: Any) {
        //get the initial bill amount
        //calculate tips
        //update the tip and total labels
        let billAmount = Double(billAmountTextField.text!) ?? 0
        let percentages = [0.15, 0.18, 0.2]
        let tip = billAmount * percentages[tipControl.selectedSegmentIndex]
        let total = billAmount + tip
        tipAmountLabel.text = String(format: "$%.2f", tip)
        totalLabel.text = String(format: "$%.2f", total)
    }
    
    
}

