//
//  BallGameViewController.swift
//  TMS_HW_UI_Code
//
//  Created by Admin on 21.04.22.
//

import UIKit

class BallGameViewController: UIViewController {

    var topButton: UIButton = UIButton()
    var leftButton: UIButton = UIButton()
    var rightButton: UIButton = UIButton()
    var botButton: UIButton = UIButton()
    var ball: UIImageView = UIImageView()
    var circleView: UIView = UIView()
    var lineView: UIView = UIView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        let scrSize: CGRect = UIScreen.main.bounds
        let scrWidth = scrSize.width
        let scrHeight = scrSize.height
        
        lineView.frame = CGRect(x: 0, y: scrHeight - 230, width: scrWidth, height: 2)
        lineView.backgroundColor = .black
        
        view.backgroundColor = .gray
        
        ball.frame = CGRect(x: scrWidth / 2, y: scrHeight / 2, width: 50, height: 50)
        ball.layer.cornerRadius = ball.frame.height / 2
        ball.image = UIImage(named: "ball")
        ball.backgroundColor = .black
        circleView.frame = CGRect(x: scrWidth / 2 - 100, y: scrHeight - 225, width: 200, height: 200)
        circleView.backgroundColor = UIColor(red: 0/255, green: 0/255, blue: 0/255, alpha: 0.1)
        circleView.layer.cornerRadius = circleView.frame.height / 2
        
        topButton.frame = CGRect(x: scrWidth / 2 - 25, y: scrHeight - 200, width: 50, height: 50)
        if let image = UIImage(named: "top") {
            self.topButton.setImage(image, for: .normal)
        }
        
        botButton.frame = CGRect(x: scrWidth / 2 - 25, y: scrHeight - 100, width: 50, height: 50)
        if let image = UIImage(named: "bot") {
            self.botButton.setImage(image, for: .normal)
        }
        
        leftButton.frame = CGRect(x: scrWidth / 2 - 75, y: scrHeight - 150, width: 50, height: 50)
        if let image = UIImage(named: "left") {
            self.leftButton.setImage(image, for: .normal)
        }
        
        rightButton.frame = CGRect(x: scrWidth / 2 + 25, y: scrHeight - 150, width: 50, height: 50)
        if let image = UIImage(named: "right") {
            self.rightButton.setImage(image, for: .normal)
        }
        topButton.addTarget(self, action: #selector(top), for: .touchUpInside)
        botButton.addTarget(self, action: #selector(bot), for: .touchUpInside)
        leftButton.addTarget(self, action: #selector(left), for: .touchUpInside)
        rightButton.addTarget(self, action: #selector(right), for: .touchUpInside)
        self.view.addSubview(lineView)
        self.view.addSubview(circleView)
        self.view.addSubview(topButton)
        self.view.addSubview(botButton)
        self.view.addSubview(leftButton)
        self.view.addSubview(rightButton)
        self.view.addSubview(ball)
    }
    
    @objc func top() {
        if ball.frame.minY - 20 < 35 {
            ball.frame = CGRect(x: ball.frame.minX, y: ball.frame.minY, width: 50, height: 50)
            ball.layer.cornerRadius = ball.frame.height / 2

        } else {
            ball.frame = CGRect(x: ball.frame.minX, y: ball.frame.minY - 30, width: 50, height: 50)
            ball.layer.cornerRadius = ball.frame.height / 2
        }
    }
    @objc func bot() {
        let scrSize: CGRect = UIScreen.main.bounds
        let scrHeight = scrSize.height

        if ball.frame.minY + 30 > scrHeight - 280 {
            ball.frame = CGRect(x: ball.frame.minX, y: ball.frame.minY, width: 50, height: 50)
            ball.layer.cornerRadius = ball.frame.height / 2

        } else {
            ball.frame = CGRect(x: ball.frame.minX, y: ball.frame.minY + 30, width: 50, height: 50)
            ball.layer.cornerRadius = ball.frame.height / 2
        }
    }
    @objc func right() {
        let scrSize: CGRect = UIScreen.main.bounds
        let scrWidth = scrSize.width
        
      
        if ball.frame.maxX + 20 > scrWidth {
            ball.frame = CGRect(x: ball.frame.minX, y: ball.frame.minY, width: 50, height: 50)
            ball.layer.cornerRadius = ball.frame.height / 2

        } else {
            ball.frame = CGRect(x: ball.frame.minX + 30, y: ball.frame.minY, width: 50, height: 50)
            ball.layer.cornerRadius = ball.frame.height / 2
        }
    }
    @objc func left() {
        if ball.frame.minX - 10 < 0 {
            ball.frame = CGRect(x: ball.frame.minX, y: ball.frame.minY, width: 50, height: 50)
            ball.layer.cornerRadius = ball.frame.height / 2

        } else {
            ball.frame = CGRect(x: ball.frame.minX - 30, y: ball.frame.minY, width: 50, height: 50)
            ball.layer.cornerRadius = ball.frame.height / 2
        }
    }
}
