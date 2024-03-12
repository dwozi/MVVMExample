//
//  MathRepository.swift
//  MVVMExample
//
//  Created by Hakan Hardal on 12.03.2024.
//

import Foundation
import RxSwift
class MathRepository{
    
    var resultLabel = BehaviorSubject<String>(value: "0")
   
    func plus(no1:String,no2:String){
        guard let num1 = Int(no1), let num2 = Int(no2) else {
            resultLabel.onNext("Invalid Value")
                return
            }
        let result = num1 + num2
        resultLabel.onNext("\(result)")//Trigger
    }
    func multiply(no1:String,no2:String){
        guard let num1 = Int(no1), let num2 = Int(no2) else{
            resultLabel.onNext("Invalid Value")
            return
        }
        let result = num1 * num2
        resultLabel.onNext("\(result)")//Trigger
    }
}
