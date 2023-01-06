//
//  CalculateBrain.swift
//  BMI-Calculate
//
//  Created by Linas Nutautas on 26/11/2022.
//


import UIKit

struct CalculateManager {
  
  //MARK: Properties:
  var bmi: BMI?
  
  //MARK: Methods:
  mutating func calculateBMI(height: Float, weight: Float) {
    let bmiValue = weight / (height * height)
    
    if bmiValue < 18.5 {
      bmi = BMI(value: bmiValue, advice: "Eat more pies", color: .blue)
    } else if bmiValue < 24.9 {
      bmi = BMI(value: bmiValue, advice: "You are good", color: .green)
    } else {
      bmi = BMI(value: bmiValue, advice: "Eat more less pies", color: .red)
    }
  }
    
    
    
    func getBMIValue() -> String {
      let bmiTo1DecinmalPlace = String(format: "%.1f", bmi?.value ?? 0.0)
      return bmiTo1DecinmalPlace
    }
    
    
    func getAdvice() -> String {
      return bmi?.advice ?? "No advice"
    }
    
    func getColors() -> UIColor {
      bmi?.color ?? .white
    }

}
