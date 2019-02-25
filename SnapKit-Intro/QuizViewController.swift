//
//  ViewController.swift
//  SnapKit-Intro
//
//  Created by P Malone on 07/02/2019.
//  Copyright © 2019 landahoy55. All rights reserved.
//

import UIKit
import SnapKit
import Bond
import ReactiveKit

class QuizViewController: UIViewController {
   
    var display = DisplayView()
    var pad = NumberPadView()
    
    var vm = QuizViewModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        setup()
        contraints()
        bindViewModel()
        
    }
    
    init() {
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    
    func bindViewModel(){
        
        vm.inputNumber.bidirectionalBind(to: pad.answer)
        vm.onScreenTotal.bind(to: display.outputLabel.reactive.text)
    
    }
    
    func setup() {
         self.view.backgroundColor = .white
         view.addSubview(display)
         view.addSubview(pad)
    }
    
    func contraints() {
        
        display.snp.makeConstraints { (make) in
            make.height.equalTo(self.view).dividedBy(2)
            make.left.equalTo(self.view).offset(20)
            make.top.equalTo(self.view.safeAreaLayoutGuide.snp.top).offset(0)
            make.right.equalTo(self.view).offset(-20)
        }
        
        pad.snp.makeConstraints { (make) -> Void in
            make.height.equalTo(self.view).dividedBy(2)
            make.left.equalTo(self.view).offset(20)
            make.bottom.equalTo(self.view.safeAreaLayoutGuide.snp.bottom).offset(-40)
            make.right.equalTo(self.view).offset(-20)
        }
    }

}

