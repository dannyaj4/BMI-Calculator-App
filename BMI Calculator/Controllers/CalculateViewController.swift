//
//  ViewController.swift
//  BMI Calculator
//
//  Created by Danny Aguswahyudy Jeremy on 08/06/2020.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import UIKit

class CalculateViewController: UIViewController {
    
    var calculatorBrain = CalculatorBrain()
    
    @IBOutlet weak var heightLabel: UILabel!
    @IBOutlet weak var weightLabel: UILabel!
    @IBOutlet weak var hightSlider: UISlider!
    @IBOutlet weak var weightSlider: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func heighSliderChanged(_ sender: UISlider) {
        //print(String(format:"%.2f", sender.value))-> decimal places
        //hightLabel.text = "\(String(format:"%.2f", sender.value))m"
        //or
        let height = String(format:"%.2f", sender.value)
        heightLabel.text = "\(height)m"
    }
    @IBAction func weightSliderChanged(_ sender: UISlider) {
        //weightLabel.text = "\(Int(sender.value))Kg"
        //weightLabel.text = "\(String(format:"%.0f", sender.value))Kg"
        //let weight = Int(sender.value)
        //or
        let weight = String(format:"%.0f", sender.value)
        weightLabel.text = "\(Int(sender.value))Kg"
    }
    
    @IBAction func calculatePressed(_ sender: UIButton) {
        let height = hightSlider.value
        let weight = weightSlider.value
        
        //or
        //print(height)
        //print(weight)
        //print(weight/pow(height, 2))
        //print("\(weight/(height*height))")
        //print(String(format:"%.2f", bmi))
        
        calculatorBrain.calculateBMI(height:height, weight:weight)
        
        self.performSegue(withIdentifier: "goToResult", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToResult" {
            let destinationVC = segue.destination as! ResultViewController
            destinationVC.bmiValue = calculatorBrain.getBMIValue()
            destinationVC.advice = calculatorBrain.getAdvice()
            destinationVC.color = calculatorBrain.getColor()
        }
    }
    
}

