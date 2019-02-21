//
//  QuizViewModel.swift
//  SnapKit-Intro
//
//  Created by P Malone on 09/02/2019.
//  Copyright © 2019 landahoy55. All rights reserved.
//


import Foundation
import Bond
import ReactiveKit

class QuizViewModel {
    
    private let inputVM = InputViewModel()
    private let displayViewModel = DisplayViewModel()

    var answer = Observable<Int?>(0)
    var total = Observable<Int>(0)
    
    init() {
        bindViewModels()
    }
    
    func bindViewModels() {
        
        inputVM.inputAnswer.bidirectionalBind(to: answer)
        inputVM.total.bind(to: total)
        //total.bind(to: inputVM.)
        //total.bind(to: inputVM.total)
        
        //Observing...
        self.total.observeNext { (Int) in
            print("Observing")
        }
        
    }
    
}
