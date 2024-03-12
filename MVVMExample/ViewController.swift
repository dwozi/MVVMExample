//
//  ViewController.swift
//  MVVMExample
//
//  Created by Hakan Hardal on 12.03.2024.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var no1: UITextField!
    
    @IBOutlet weak var no2: UITextField!
    
    @IBOutlet weak var resultLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        resultLabel.text = "0"

    }
    
    @IBAction func plusButton(_ sender: Any) {
        
        guard let num1 = Int(no1.text ?? ""), let num2 = Int(no2.text ?? "") else {
                resultLabel.text = "Invalid value"
                return
            }
            
            
            let result = num1 + num2
            
          
            resultLabel.text = "\(result)"
        
    }
    
    @IBAction func multiplyButton(_ sender: Any) {
        
        guard let num1 = Int(no1.text ?? ""), let num2 = Int(no2.text ?? "") else {
                resultLabel.text = "Invalid value"
                return
            }
            
            let result = num1 + num2
            resultLabel.text = "\(result)"
    }
    
}

