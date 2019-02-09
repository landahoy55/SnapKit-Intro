//
//  ViewController.swift
//  SnapKit-Intro
//
//  Created by P Malone on 07/02/2019.
//  Copyright © 2019 landahoy55. All rights reserved.
//

import UIKit
import SnapKit

class ViewController: UIViewController {
   
    var display = DisplayView()
    var pad = NumberPadView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.

        setup()
        contraints()
        
    }

    func setup() {
         view.addSubview(display)
         view.addSubview(pad)
    }
    
    func contraints() {
        
        display.snp.makeConstraints { (make) in
            make.height.equalTo(self.view).dividedBy(2)
            make.left.equalTo(self.view).offset(20)
            make.top.equalTo(self.view).offset(-20)
            make.right.equalTo(self.view).offset(-20)
        }
        
        pad.snp.makeConstraints { (make) -> Void in
            make.height.equalTo(self.view).dividedBy(2)
            make.left.equalTo(self.view).offset(20)
            make.bottom.equalTo(self.view).offset(-20)
            make.right.equalTo(self.view).offset(-20)
        }
    }

}

