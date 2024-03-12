//
//  MainViewModel.swift
//  MVVMExample
//
//  Created by Hakan Hardal on 12.03.2024.
//

import Foundation
import RxSwift


class MainViewModel{
    
    var mRepo = MathRepository()
    var resultLabel = BehaviorSubject<String>(value: "0")
    
    init(){
        resultLabel = mRepo.resultLabel
    }
    
    func plus(no1:String,no2:String){
        mRepo.plus(no1: no1, no2: no2)
    }
    func multiply(no1:String,no2:String){
        mRepo.multiply(no1: no1, no2: no2)
    }
   
}
