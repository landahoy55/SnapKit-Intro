//
//  InputViewModel.swift
//  SnapKit-Intro
//
//  Created by P Malone on 09/02/2019.
//  Copyright © 2019 landahoy55. All rights reserved.
//

import Foundation
import Bond
import ReactiveKit

class InputViewModel {
    
    var inputAnswer = Observable<Int?>(0)
    var stringTotal = Observable<String?>("0")
    
    
    init() {
        setObservers()
    }

    private var tempInput = Observable("0")
    
     func addToTotal(answer: Int) {
        
        tempInput.value += "\(answer)"
        stringTotal.value = self.tempInput.value.replacingOccurrences(
            of: "^0+",
            with: "",
            options: .regularExpression
        )
    }
    
    func setObservers() {
        _ = inputAnswer.observeNext(with: { (ans) in
            guard let answer = ans else { return }
            self.addToTotal(answer: answer)
        })
    }

}
