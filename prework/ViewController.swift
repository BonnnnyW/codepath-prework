//
//  ViewController.swift
//  prework
//
//  Created by 王贝怩 on 2022/1/26.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var BillAmountTextFile: UITextField!
    
    @IBOutlet weak var tipAmountLabel: UILabel!
    
    @IBOutlet weak var totalLabel: UILabel!
    
    @IBOutlet weak var Tipcontrol: UISegmentedControl!
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func CalculateTip(_ sender: Any) {
        let bill = Double(BillAmountTextFile.text!) ?? 0
        let tipPercentages = [0.15, 0.18, 0.2]
        let tip = bill*tipPercentages[Tipcontrol.selectedSegmentIndex]
        let total = bill + tip
        tipAmountLabel.text = String(format:"$%.2f",tip)
        totalLabel.text = String(format:"$%.2f", total)
    }
    
}

