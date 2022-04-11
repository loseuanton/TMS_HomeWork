//
//  StringComparisonViewController.swift
//  TMS_HW_Func
//
//  Created by Admin on 11.04.22.
//

import UIKit

class StringComparisonViewController: UIViewController {
    @IBOutlet weak var stringFirst: UITextField!
    @IBOutlet weak var stringSecond: UITextField!
    @IBOutlet weak var answerLabel: UILabel!
  
    func stringComparison(stringFirst: String, stringSecond: String) {
        if stringFirst == stringSecond {
            answerLabel.text = "Ответ: Эти строки равны"
        } else if stringFirst < stringSecond {
            answerLabel.text = "Ответ: Первая строка меньше второй"
        } else {
            answerLabel.text = "Ответ: Первая строка больше второй"
        }
    }
    @IBAction func compareStrings(_ sender: UIButton) {
        stringComparison(stringFirst: stringFirst.text!, stringSecond: stringSecond.text!)
    
              
    }
    
    

}

