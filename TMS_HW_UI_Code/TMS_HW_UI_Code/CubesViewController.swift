//
//  CubesViewController.swift
//  TMS_HW_UI_Code
//
//  Created by Admin on 21.04.22.
//

import UIKit

class CubesViewController: UIViewController {
    var cubesView = [UIView]()
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
    }
    
    @IBAction func createCubesButton(sender: UIButton) {
        let scrSize: CGRect = UIScreen.main.bounds
        let scrWidth = scrSize.width
        let scrHeight = scrSize.height
        
        for index in 0..<cubesView.count {
            self.cubesView[index].removeFromSuperview()
        }
        cubesView.removeAll()
        
        for _ in 0...(.random(in: 1...100)) {
            cubesView.append(UIView())
        }
        for index in 0..<cubesView.count {
            let positionX: Int = .random(in: 0...Int(scrWidth) - 10)
            let positionY: Int = .random(in: 10...Int(scrHeight) - 100)
            
            let rect = CGRect(x: positionX , y: positionY, width: 10, height: 10)
            cubesView[index].frame = CGRect(x: positionX, y: positionY, width: 10, height: 10)
            
            for cubes in 0..<index {
                var isRectInRect = false
                
                let rectToCompare = CGRect(x: cubesView[cubes].frame.minX, y: cubesView[cubes].frame.minY, width: 20, height: 20)
                isRectInRect = rect.intersects(rectToCompare)
                
                if isRectInRect == true {
                    cubesView[index].frame = CGRect(x: 50, y: 50, width: 10, height: 10)
            }
        }
    }
        for index in 0..<cubesView.count {
            self.view.addSubview(cubesView[index])
            cubesView[index].backgroundColor = UIColor(red:   .random(in: 0...1), green: .random(in: 0...1), blue:  .random(in: 0...1), alpha: 1.0)
        }
    }
}
