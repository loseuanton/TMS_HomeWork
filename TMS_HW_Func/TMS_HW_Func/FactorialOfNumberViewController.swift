//
//  FactorialOfNumberViewController.swift
//  TMS_HW_Func
//
//  Created by Admin on 11.04.22.
//

import UIKit

class FactorialOfNumberViewController: UIViewController {
    @IBOutlet weak var numberTextField: UITextField!
    @IBOutlet weak var answerLabel: UILabel!
    var numbers: Int = 0
    var currentInput: Int {
        get {
            return Int(numberTextField.text!)!
        }
        set {
            numberTextField.text = "\(newValue)"
           
        }
    }
    
    
    func factorialOfNumber(number: Int) -> Int {
        numbers = currentInput
            var result = number
            var temp = number
            while temp > 1 {
                temp -= 1
                result *= temp
            }
        return result
        }
    
    @IBAction func factorialButton(_ sender: UIButton) {
        answerLabel.text = "Ответ: \(factorialOfNumber(number: numbers))"
        
    }
}
