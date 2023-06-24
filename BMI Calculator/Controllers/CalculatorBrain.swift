//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by Gaurav Bhambhani on 6/23/23.
//  Copyright © 2023 Angela Yu. All rights reserved.
//

import UIKit


struct BMI {
    let value: Float
    let advice: String
    let color: UIColor
    
    init(value: Float, advice: String, color: UIColor) {
        self.value = value
        self.advice = advice
        self.color = color
    }
}


struct CalculatorBrain {
    
    var bmi: BMI?
    
    mutating func calculateBmi(height: Float, weight: Float) {
        let bmiValue = weight / pow(height, 2)
        
        if bmiValue < 18.5 {
            bmi = BMI(value: bmiValue, advice: "You should eat more!", color: .blue)
        }
        else if bmiValue < 24.5 {
            bmi = BMI(value: bmiValue, advice: "You are doing great!", color: .green)
        }
        else {
            bmi = BMI(value: bmiValue, advice: "Eat a little less.", color: .red)
        }
    }
    
    func getBmi() -> Float {
        return  bmi?.value ?? 0.0
    }
    
    func getAdvice() -> String {
        return bmi?.advice ?? "No advice"
    }
    
    func getColor() -> UIColor {
        return bmi?.color ?? .white
    }
    
//    func getAdvice(value: Float) -> String {
//        if value < 18.5 {
//            return "Eat more!"
//        }
//        else if value >= 18.5 && value <= 24.9 {
//            return "You're doing great!"
//        }
//        else {
//            return "Eat less!"
//        }
//    }
//
//    func getColor(value: Float) -> UIColor {
//        if value < 18.5 {
//            return .blue
//        }
//        else if value >= 18.5 && value <= 24.9 {
//            return .green
//        }
//        else {
//            return .red
//        }
//    }
    
//    func getValues () -> BMI {
//        return bmi ?? BMI(value: 0.0, advice: "No advice", color: .white)
//    }
}
