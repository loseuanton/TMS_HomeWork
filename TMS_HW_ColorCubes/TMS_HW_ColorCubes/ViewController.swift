//
//  ViewController.swift
//  TMS_HW_ColorCubes
//
//  Created by Admin on 22.04.22.
//

import UIKit

class ViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let frame = CGRect(x: 10.0, y: 60.0, width: 130.0, height: 30.0)
    let button = UIButton(frame: frame)
        button.setTitle("Push me!", for: .normal)
        button.setTitleColor(.purple, for: .normal)
        
        button.setTitle("You touch me!", for: .highlighted)
        button.setTitleColor(.green, for: .highlighted)
        view.addSubview(button)
    }
    
}

