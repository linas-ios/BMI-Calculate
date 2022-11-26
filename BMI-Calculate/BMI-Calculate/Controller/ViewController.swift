//
//  ViewController.swift
//  BMI-Calculate
//
//  Created by Linas Nutautas on 24/11/2022.
//

import UIKit

class ViewController: UIViewController {

  @IBOutlet weak var heightLabel: UILabel!
  @IBOutlet weak var weightLabel: UILabel!
  @IBOutlet weak var heightSlider: UISlider!
  @IBOutlet weak var weightSlider: UISlider!
  
  override func viewDidLoad() {
    super.viewDidLoad()
  }

  @IBAction func heightSliderChanged(_ sender: UISlider) {
    //String(format: "%.2f", sender.value )
    //heightLabel.text = String(format: "%.2f", sender.value)
    let heightSlide = (sender.value * 100).rounded() / 100
    heightLabel.text = "\(heightSlide)m"
  }
  
  
  @IBAction func weightSliderChanged(_ sender: UISlider) {
    let weight = String(format: "%.0f", sender.value)
    weightLabel.text = "\(weight)kg"
//    var weightSlide = (sender.value * 10).rounded() / 10
//    weightLabel.text = "\(weightSlide)kg"
    
  }
  
  @IBAction func calculatedTapped(_ sender: UIButton) {
    let height = heightSlider.value
    let weight = weightSlider.value
    let bmi = weight / pow(height, 2) //<- raise power 2 (m2)
    
    
    
    
    
//    //create object secondVC and initialization SecondViewController
//    let secondVC = SecondViewController()
//
//    //pass data from bmi in secondViewController
//    secondVC.bmiValue = String(format: "%.1f", bmi)
//
//    //move to secondViewController
//    self.present(secondVC, animated: true, completion: nil)
//
  }
  
}

