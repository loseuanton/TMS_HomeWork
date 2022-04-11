//
//  BinOperationViewController.swift
//  TMS_HW_Func
//
//  Created by Admin on 10.04.22.
//

import UIKit

class BinOperationViewController: UIViewController {
    @IBOutlet weak var displayResultLable: UILabel!
    var stillTyping = false
    var firstOperand: Double = 0
    var secondOperand: Double = 0
    var dotIsPlace = false
    var operationSign: String = ""
    var currentInput: Double {
        get {
            return Double(displayResultLable.text!)!
        }
        set {
            displayResultLable.text = "\(newValue)"
            stillTyping = false
        }
    }
    
    @IBAction func numberPressed(_ sender: UIButton) {
        let number = sender.currentTitle!
        
        if stillTyping {
        if displayResultLable.text!.count < 20 {
            displayResultLable.text = displayResultLable.text! + number
        }
        
        } else {
            displayResultLable.text = number
            stillTyping = true
        }
            
        }
    @IBAction func twoOperandsSignPressed(_ sender: UIButton) {
        operationSign = sender.currentTitle!
        firstOperand = currentInput
        stillTyping = false
        dotIsPlace = false
        
    }
    
    func operateWithTwoOperands(operation: (Double, Double) -> Double) {
        currentInput = operation(firstOperand, secondOperand)
        stillTyping = false
    }
    
    @IBAction func equalitySignPressed(_ sender: UIButton) {
        if stillTyping {
            secondOperand = currentInput
        }
        
        dotIsPlace = false
        switch operationSign {
        case "+":
            operateWithTwoOperands{$0 + $1}
        case "-":
            operateWithTwoOperands{$0 - $1}
        case "x":
            operateWithTwoOperands{$0 * $1}
        case "/":
            operateWithTwoOperands{$0 / $1}
        default: break
        }
    }
    @IBAction func dotButtonPressed(_ sender: UIButton) {
        if stillTyping && !dotIsPlace {
            displayResultLable.text = displayResultLable.text! + "."
            dotIsPlace = true
        } else if !stillTyping && !dotIsPlace {
            displayResultLable.text = "0."
            
        }
    }
    
    @IBAction func clearButtonPressed(_ sender: UIButton) {
        firstOperand = 0
        secondOperand = 0
        currentInput = 0
        displayResultLable.text = "0"
        stillTyping = false
        dotIsPlace = false
        operationSign = ""
    }
}


