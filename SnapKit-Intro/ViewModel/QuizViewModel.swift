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
    
    var answer = Observable<String?>("0")
    
    private let answerViewModel = AnswerViewModel()
    private let displayViewModel = DisplayViewModel()
    
    init() {
        //self.answerViewModel = answerViewModel
        //self.displayViewModel = displayViewModel
        
        answerViewModel.answer.bidirectionalBind(to: answer)
        displayViewModel.display.bidirectionalBind(to: answer)
        
    }
    
}
