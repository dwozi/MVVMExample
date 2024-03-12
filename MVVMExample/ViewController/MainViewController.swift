//
//  ViewController.swift
//  MVVMExample
//
//  Created by Hakan Hardal on 12.03.2024.
//

import UIKit

class MainViewController: UIViewController {
    @IBOutlet weak var no1: UITextField!
    
    @IBOutlet weak var no2: UITextField!
    
    @IBOutlet weak var resultLabel: UILabel!
    
    var mainVM = MainViewModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        _ =  mainVM.resultLabel.subscribe(onNext: { result in
            self.resultLabel.text = result
        })

    }
    
    @IBAction func plusButton(_ sender: Any) {
        
        mainVM.plus(no1: no1.text ?? "", no2: no2.text ?? "")
       
    }
    
    @IBAction func multiplyButton(_ sender: Any) {
        mainVM.multiply(no1: no1.text ?? "", no2: no2.text ?? "")
        
        
    }
    
}

