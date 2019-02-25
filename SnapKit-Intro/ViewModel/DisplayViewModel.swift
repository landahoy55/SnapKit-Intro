//
//  DisplayViewModel.swift
//  SnapKit-Intro
//
//  Created by P Malone on 09/02/2019.
//  Copyright © 2019 landahoy55. All rights reserved.
//

import Foundation
import Bond
import ReactiveKit

class DisplayViewModel {
    
    var display = Observable<Int?>(0) {
        didSet {
            print("Display View Model Did Set")
            self.convertIntToString()
        }
    }
    var displayString = Observable<String?>("0")
    
    init() {
        setObservers()
    }

    private func convertIntToString() {
        guard let value = display.value else { return }
        displayString.value = "\(value)"
        
    }
    
    func setObservers() {
        _ = display.observeNext(with: { (str) in
            print("Display View Model:", str)
        })
    }

}

