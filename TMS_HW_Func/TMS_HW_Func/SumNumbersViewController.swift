//
//  SumNumbersViewController.swift
//  TMS_HW_Func
//
//  Created by Admin on 10.04.22.
//

import UIKit

class SumNumbersViewController: UIViewController {

    @IBOutlet weak var answerLabel: UILabel!
    @IBOutlet weak var sumNumbersTextField: UITextField!
    var numbers: Int = 0

    
    
    var currentInput: Int {
        get {
            return Int(sumNumbersTextField.text!)!
        }
        set {
            sumNumbersTextField.text = "\(newValue)"
        }
    }
    
    func sumNumbers(number: Int) -> Int {
        numbers = currentInput
        var result: Int = 0
        var number = numbers
        while number > 0 {
            result += Int(number) % 10
            number /= 10
        }
        return result
    }
    
    @IBAction func sumButton(_ sender: UIButton) {
        answerLabel.text = "Ответ: \(sumNumbers(number: numbers))"
        print(sumNumbers(number: Int(numbers)))
    }
}
