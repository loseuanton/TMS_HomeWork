//
//  DegreeViewController.swift
//  TMS_HW_Func
//
//  Created by Admin on 11.04.22.
//

import UIKit

class DegreeViewController: UIViewController {
    @IBOutlet weak var numberTextField: UITextField!
    @IBOutlet weak var degreeTextField: UITextField!
    @IBOutlet weak var answerLabel: UILabel!
    var numbers: Int = 0
    var degreeNumbers: Int = 0
    
    
    var currentInput: Int {
        get {
            return Int(numberTextField.text!)!
        }
        set {
            numberTextField.text = "\(newValue)"
           
        }
    }
    var currentInput2: Int {
        get {
            return Int(degreeTextField.text!)!
        }
        set {
            degreeTextField.text = "\(newValue)"
           
        }
    }
    
    func exponentiate(number: Int, degree: Int) -> Int {
        numbers = currentInput
        degreeNumbers = currentInput2
        var index = 1
        var result = number
        while index < degree {
            result *= number
            index += 1
        }
        return result
    }

    @IBAction func exponentiateButton(_ sender: UIButton) {
        
        answerLabel.text = "Ответ: \(exponentiate(number: numbers, degree: degreeNumbers))"
        print(exponentiate(number: numbers, degree: degreeNumbers))
    }
}

