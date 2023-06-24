//
//  ViewController.swift
//  BMI Calculator
//
//  Created by Angela Yu on 21/08/2019.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import UIKit

class CalculateViewController: UIViewController {
        
    @IBOutlet var heightLbl: UILabel!
    @IBOutlet var weightLbl: UILabel!
    
    @IBOutlet var heightSlider: UISlider!
    @IBOutlet var weightSlider: UISlider!
    
    var calculatorBrain = CalculatorBrain()
    
    @IBAction func heightSliderChanged(_ sender: UISlider) {
//        heightLbl.text = "\(round(sender.value * 100) / 100)m"
        heightLbl.text = "\(String(format: "%.2f", sender.value))m"
    }
    
    @IBAction func weightSliderChanged(_ sender: UISlider) {
//        weightLbl.text = "\(String(format: "%.0f", sender.value))Kg"
        weightLbl.text = "\(Int(sender.value))Kg"
    }
    
    @IBAction func calculatePressed(_ sender: UIButton) {
        let height = heightSlider.value
        let weight = weightSlider.value 
        
//        let bmi = weight / (height*height)
        calculatorBrain.calculateBmi(height: height, weight: weight)
        
        // to load up the second page.
//        let resultVC = ResultViewController()
//        resultVC.bmiValue = String(format: "%.1f", bmi)
//        self.present(resultVC, animated: true)
        
        self.performSegue(withIdentifier: "goToResult", sender: self)
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToResult" {
            let destinationVC = segue.destination as! ResultViewController
//            destinationVC.bmiValue = String ( format: "%.1f",  calculatorBrain.getValues().value)
            destinationVC.bmiValue = String(format: "%.1f", calculatorBrain.getBmi())
            destinationVC.adviceValue = calculatorBrain.getAdvice()
            destinationVC.colorValue = calculatorBrain.getColor()
        }
    }
    
}

