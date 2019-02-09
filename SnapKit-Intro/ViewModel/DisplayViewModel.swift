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
    
    var display = Observable<String?>("0")
    
    init() {
        _ = display.observeNext(with: { (str) in
            print("Display View Model - update", str)
        })

    }

}

