//
//  SettingsViewController.swift
//  Prework
//
//  Created by Alex Schrader on 2021/11/23.
//

import UIKit

class SettingsViewController: UIViewController {
    @IBOutlet weak var defaultOne: UITextField!
    @IBOutlet weak var defaultTwo: UITextField!
    @IBOutlet weak var defaultThree: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func Save(_ sender: Any) {
        let defaults = UserDefaults.standard
        defaults.set(Double(defaultOne.text!) ?? 0, forKey:"defaultOne")
        defaults.set(Double(defaultTwo.text!) ?? 0, forKey:"defaultTwo")
        defaults.set(Double(defaultThree.text!) ?? 0, forKey:"defaultThree")
        
        defaults.synchronize()
        
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
