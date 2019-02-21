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
    var total = Observable<Int>(0)
    
    init() {
        _ = inputAnswer.observeNext(with: { (ans) in
            if let answer = ans {
                self.addToTotal(answer: answer)
            }
        })
    }

    
    func addToTotal(answer: Int){
        
        total.value += answer
        print("New Total:", total.value)
        
    }

}
