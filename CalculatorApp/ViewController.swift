//
//  ViewController.swift
//  CalculatorApp
//
//  Created by aseo on 2019/03/21.
//  Copyright © 2019年 Falcon Tech. All rights reserved.
//

import UIKit
import Calculator

class ViewController: UIViewController {

    @IBOutlet weak var aTextField: UITextField!
    @IBOutlet weak var bTextField: UITextField!
    @IBOutlet weak var additionTextField: UITextField!
    @IBOutlet weak var subtractionTextField: UITextField!
    @IBOutlet weak var multiplicationTextField: UITextField!
    @IBOutlet weak var divisionTextField: UITextField!
    @IBOutlet weak var calcButton: UIButton!
    
    let calculator = Calculator()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func didTapCalcButton(_ sender: Any) {
        guard let aText = aTextField.text, let bText = bTextField.text,
              let a = Int(aText),let b = Int(bText) else {
            return
        }
        let addition = calculator.addition(a: a, b: b)
        let subtraction = calculator.subtraction(a: a, b: b)
        let multiplication = calculator.multiplication(a: a, b: b)
        let division = calculator.division(a: a, b: b)
        additionTextField.text = "\(addition)"
        subtractionTextField.text = "\(subtraction)"
        multiplicationTextField.text = "\(multiplication)"
        divisionTextField.text = "\(division)"
    }
}

