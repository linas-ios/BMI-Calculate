//
//  ResultViewController.swift
//  BMI-Calculate
//
//  Created by Linas Nutautas on 26/11/2022.
//

import UIKit

class ResultViewController: UIViewController {
  
  //MARK: Properties:
  var bmiValue: String?
  var advice: String?
  var color: UIColor?
  
  //MARK: Outlets:
  
  @IBOutlet weak var bmiLabel: UILabel!
  @IBOutlet weak var showTipsLabel: UILabel!
  
  
  override func viewDidLoad() {
    super.viewDidLoad()
    bmiLabel.text = bmiValue
    showTipsLabel.text = advice
    view.backgroundColor = color
    
  }
  
  //MARK: Actions:
  
  @IBAction func recalculateTapped(_ sender: UIButton) {
    self.dismiss(animated: true)
  }
  
  
}
