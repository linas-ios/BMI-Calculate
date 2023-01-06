//
//  ViewController.swift
//  BMI-Calculate
//
//  Created by Linas Nutautas on 24/11/2022.
//

import UIKit

class CalculateViewController: UIViewController {
  
  var calculateBrain = CalculateManager()
  
  @IBOutlet weak var heightLabel: UILabel!
  @IBOutlet weak var weightLabel: UILabel!
  @IBOutlet weak var heightSlider: UISlider!
  @IBOutlet weak var weightSlider: UISlider!
  
  override func viewDidLoad() {
    super.viewDidLoad()
  }
  
  @IBAction func heightSliderChanged(_ sender: UISlider) {
    let height = String(format: "%.2f", sender.value)
    heightLabel.text = "\(height)m"
  }
  
  
  @IBAction func weightSliderChanged(_ sender: UISlider) {
    let weight = String(format: "%.0f", sender.value)
    weightLabel.text = "\(weight)kg"
    
    
  }
  
  @IBAction func calculatedTapped(_ sender: UIButton) {
    let height = heightSlider.value
    let weight = weightSlider.value
    
    calculateBrain.calculateBMI(height: height, weight: weight)
    self.performSegue(withIdentifier: "goToResult", sender: self)
    
  }
  
  override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
    if segue.identifier == "goToResult" {
      let destinationVC = segue.destination as! ResultViewController
      destinationVC.bmiValue = calculateBrain.getBMIValue()
      destinationVC.advice = calculateBrain.getAdvice()
      destinationVC.color = calculateBrain.getColors() 
    }
  }
}

