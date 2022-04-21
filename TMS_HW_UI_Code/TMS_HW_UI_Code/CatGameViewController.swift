//
//  CatGameViewController.swift
//  TMS_HW_UI_Code
//
//  Created by Admin on 20.04.22.
//

import UIKit

class CatGameViewController: UIViewController {
    var ballButton: UIButton = UIButton()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        ballButton.frame = CGRect(x: 150, y: 300, width: 100, height: 100)
        ballButton.backgroundColor = UIColor(ciColor: .red)
        ballButton.layer.cornerRadius = ballButton.frame.height / 2

        ballButton.addTarget(self, action: #selector(nextPosition), for: .touchUpInside)
        
        self.view.addSubview(ballButton)
    }
    
    @objc func nextPosition() {
        let scrSize: CGRect = UIScreen.main.bounds
        let scrWidth = scrSize.width
        let scrHeight = scrSize.height
    
        
        let randomX = Int.random(in: 0..<Int(scrWidth - 100))
        let randomY = Int.random(in: 0..<Int(scrHeight - 100))
        
        ballButton.frame = CGRect(x: randomX, y: randomY, width: 100, height: 100)
        ballButton.backgroundColor = UIColor(red:   .random(in: 0...1), green: .random(in: 0...1), blue:  .random(in: 0...1), alpha: 1.0)
        
        
        

        
    }
}

