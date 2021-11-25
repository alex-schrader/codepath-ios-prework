//
//  ViewController.swift
//  Prework
//
//  Created by Alex Schrader on 2021/11/23.
//

import UIKit

class ViewController: UIViewController {
    let defaults = UserDefaults.standard
    @IBOutlet weak var settings: UIBarButtonItem!
    @IBOutlet weak var tipAmountLabel: UILabel!
    @IBOutlet weak var tipControl: UISegmentedControl!
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var billAmountTextField: UITextField!
    @IBOutlet weak var options: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.title = "Tip Calculator"
        options.setTitle(defaults.string(forKey: "defaultOne")!+"%", forSegmentAt: 0)
        options.setTitle(defaults.string(forKey: "defaultTwo")!+"%", forSegmentAt: 1)
        options.setTitle((defaults.string(forKey: "defaultThree")!+("a")), forSegmentAt: 2)
        
        // Do any additional setup after loading the view.
        
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        print("view will appear")
        var stringOne = defaults.string(forKey: "defaultOne")! + "%"
        options.setTitle(stringOne, forSegmentAt: 0)
        var stringTwo = defaults.string(forKey: "defaultTwo")! + "%"
        options.setTitle(stringTwo, forSegmentAt: 1)
        var stringThree = defaults.string(forKey: "defaultThree")! + "%"
        options.setTitle(stringThree, forSegmentAt: 2)
        // This is a good place to retrieve the default tip percentage from UserDefaults
        // and use it to update the tip amount
    }

    @IBAction func calculateTip(_ sender: Any) {
        let defaults = UserDefaults.standard
        let bill = Double(billAmountTextField.text!) ?? 0
        let tipPercentages = [defaults.double(forKey: "defaultOne"), defaults.double(forKey: "defaultTwo"), defaults.double(forKey: "defaultThree")]
        
        let tip = bill * tipPercentages[tipControl.selectedSegmentIndex]/100
        let total = bill + tip
        
        tipAmountLabel.text = //defaults.string(forKey: "defaultOne")
            String(format:"$%.2f", tip)
        totalLabel.text = String(format:"$%.2f", total)
        
        
    }
    
    
}

