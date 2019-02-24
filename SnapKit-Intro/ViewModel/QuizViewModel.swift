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

    var inputNumber = Observable<Int?>(0)
    var onScreenTotal = Observable<String?>("0")
    
    init() {
        bindViewModels()
    }
    
    private func bindViewModels() {
        
        inputVM.inputAnswer.bidirectionalBind(to: inputNumber)
        inputVM.stringTotal.bind(to: onScreenTotal)
        
    }
    
}
