//
//  ResultViewController.swift
//  BMI Calculator
//
//  Created by Gaurav Bhambhani on 6/23/23.
//  Copyright © 2023 Angela Yu. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {
    
    var bmiValue: String?
    var adviceValue: String?
    var colorValue: UIColor?

    @IBOutlet var bmiLabel: UILabel!
    @IBOutlet var adviceLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        bmiLabel.text = self.bmiValue
        adviceLabel.text = adviceValue
        view.backgroundColor = colorValue
    }
    
    @IBAction func recalculatePressed(_ sender: Any) {
        
        // to go back to previous screen
        
        self.dismiss(animated: true)
        
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
