//
//  CubesColorViewController.swift
//  TMS_HW_ColorCubes
//
//  Created by Admin on 22.04.22.
//

import UIKit
enum ColorStyle: Int {
    case redColor = 1
    case greyColor = 2
    case blueColor = 3
    case greenColor = 4
    case yellowColor = 5
    case pinkColor = 6
    case orangeColor = 7
    case brownColor = 8
    case whiteColor = 9
    case blackColor = 10
    case violetColor = 11
    
    func cubesColor() -> UIColor {
        switch self {
        case .redColor:
            return .red
        case .greyColor:
            return .gray
        case .blueColor:
            return .blue
        case .greenColor:
            return .green
        case .yellowColor:
            return .yellow
        case .pinkColor:
            return .systemPink
        case .orangeColor:
            return .orange
        case .brownColor:
            return .brown
        case .whiteColor:
            return .white
        case .blackColor:
            return .black
        case .violetColor:
            return .purple
        }
    }
    func cubesText() -> String {
        switch self {
        case .redColor:
            return "красный"
        case .greyColor:
            return "серый"
        case .blueColor:
            return "голубой"
        case .greenColor:
            return "зеленый"
        case .yellowColor:
            return "желтый"
        case .pinkColor:
            return "розовый"
        case .orangeColor:
            return "оранжевый"
        case .brownColor:
            return "коричневый"
        case .whiteColor:
            return "белый"
        case .blackColor:
            return "черный"
        case .violetColor:
            return "пурпурный"
        }
        
    }
}



class CubesColorViewController: UIViewController {
    @IBOutlet weak var widthAndHeightTextField: UITextField!
    var num: Int = 0
    var cubesView: [UIButton] = [UIButton]()
    var currentInput: Int {
        get {
            return Int(widthAndHeightTextField.text!)!
        }
        set {
            widthAndHeightTextField.text = "\(newValue)"
            
        }
    }
    
    @IBAction func createCubesButton(sender: UIButton) {
        num = currentInput
        let scrSize: CGRect = UIScreen.main.bounds
        let scrWidth = scrSize.width
        let scrHeight = scrSize.height
        
        for index in 0..<cubesView.count {
            self.cubesView[index].removeFromSuperview()
        }
        cubesView.removeAll()
        
        for _ in 0...(.random(in: 1...30)) {
            cubesView.append(UIButton())
        }
        for index in 0..<cubesView.count {
            let positionX: Int = .random(in: 0...Int(scrWidth) - num)
            let positionY: Int = .random(in: 10...Int(scrHeight) - 200)
            
            let rect = CGRect(x: positionX , y: positionY, width: num, height: num)
            cubesView[index].frame = CGRect(x: positionX, y: positionY, width: num, height: num)
            
            for cubes in 0..<index {
                var isRectInRect = false
                
                let rectToCompare = CGRect(x: Int(cubesView[cubes].frame.minX), y: Int(cubesView[cubes].frame.minY), width: num, height: num)
                isRectInRect = rect.intersects(rectToCompare)
                
                
                if isRectInRect == true {
                    cubesView[index].frame = CGRect(x: 15000, y: 15000, width: num, height: num)
                }
            }
        }
        for index in 0..<cubesView.count {
            let randNum: ColorStyle! = ColorStyle(rawValue: .random(in: 1...11))
            self.view.addSubview(cubesView[index])
            cubesView[index].setViewStyle(viewStyle: randNum)
            
        }
    }
}
extension UIButton {
    func setViewStyle(viewStyle: ColorStyle) {
        self.backgroundColor = viewStyle.cubesColor()
        self.setTitle("", for: .normal)
        self.setTitle(viewStyle.cubesText(), for: .highlighted)
        self.setTitleColor(UIColor(red:   .random(in: 0...1), green: .random(in: 0...1), blue:  .random(in: 0...1), alpha: 1.0), for: .normal)
    }
}


