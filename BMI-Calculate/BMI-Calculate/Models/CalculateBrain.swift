//
//  CalculateBrain.swift
//  BMI-Calculate
//
//  Created by Linas Nutautas on 26/11/2022.
//

import Foundation

struct CalculateBrain {
  
  //MARK: Properties:
  var bmi: Float = 0.0
  
  //MARK: Methods:
  mutating func calculateBMI(height: Float, weight: Float) {
    bmi = weight / pow(height, 2)
  }
  
  func getBMIValue() -> String {
    return String(format: "%.1f", bmi)
  }
}
