//
//  NumberPadView.swift
//  SnapKit-Intro
//
//  Created by P Malone on 07/02/2019.
//  Copyright © 2019 landahoy55. All rights reserved.
//

import Foundation
import UIKit
import SnapKit
import Bond
import ReactiveKit

class NumberPadView: UIView {

    
    //var button = UIButton(type: .system)
    let numPadStackView: UIStackView = {
        let sv = UIStackView()

        sv.axis = .vertical
        sv.spacing = 20
        sv.distribution = .fillEqually
        
        return sv
    }()
    
    override init(frame: CGRect) {
    
        super.init(frame: frame)
        createSubviews()

    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        createSubviews()
    }

    var answer = Observable<Int?>(0)
    
    @objc func handleTap(sender: UIButton) {
        
        let tag = sender.tag
        
        
        answer.value = tag
        //answer.input = "\(tag)"
        
        print("Tapped: \(tag)")
    }
    
    func contraints() {
        
        numPadStackView.snp.makeConstraints { (make) in
            make.center.equalToSuperview()
        }
    }
    
    func createSubviews() {
        //self.backgroundColor = .green
        createButtons()
        contraints()
    }
    
    //create three buttons
    func createButtons() {
       
        //Numebr pad numbers
        
        let numbers: [[Int]] = [[1,2,3],[4,5,6],[7,8,9]]
        self.addSubview(numPadStackView)
        
        for array in numbers {
            
            let numPadRow = createHorizontalStackView()
        
            numPadStackView.addArrangedSubview(numPadRow)
            
            for number in array {
                let button = createNumberedButton(number: number)
                numPadRow.addArrangedSubview(button)
            }
            
        }
    
        let bottomNumPadRow = createHorizontalStackView()
        bottomNumPadRow.distribution = .fillEqually
        
        numPadStackView.addArrangedSubview(bottomNumPadRow)
        
        let zeroButton = createNumberedButton(number: 0)
        
        zeroButton.snp.makeConstraints { (make) in
            make.height.width.equalTo(85)
        }
        
        let leftview = UIView()
        leftview.snp.makeConstraints { (make) in
            make.height.width.equalTo(85)
        }
        
        let rightview = UIView()
        
        
        rightview.snp.makeConstraints { (make) in
            make.height.width.equalTo(85)
        }
        
        bottomNumPadRow.addArrangedSubview(leftview)
        bottomNumPadRow.addArrangedSubview(zeroButton)
        bottomNumPadRow.addArrangedSubview(rightview)
    }
    
    func createHorizontalStackView() -> UIStackView {
        
        let numPadRow: UIStackView = {
            let sv = UIStackView()
            sv.axis = .horizontal
            sv.spacing = 20
            sv.distribution = .fillEqually
            return sv
        }()
        
        return numPadRow
    }
    
    
    
    func createNumberedButton(number: Int) -> UIButton {
        let button: UIButton = {
            let btn = UIButton(type: .system)
            btn.setTitle("1", for: .normal)
            //btn.titleLabel?.font = .systemFont(ofSize: 72)
            btn.titleLabel?.font = UIFont(name: "Rubik-Bold", size: 72)
            btn.titleLabel?.textAlignment = NSTextAlignment.center
            btn.setTitleColor(.white, for: .normal)
            //rgba(248, 221, 235, 1)
            //btn.setTitleColor(UIColor(r: 248, g: 221, b: 235), for: .normal)
            btn.backgroundColor = UIColor(r: 228, g: 61, b: 106)
            btn.layer.cornerRadius = 7
            
            //shadows
            btn.layer.shadowColor = UIColor(r:177, g:49, b:83).cgColor
            btn.layer.shadowOffset = CGSize(width: 0.0, height: 2.0)
            btn.layer.shadowOpacity = 1.0
            btn.layer.shadowRadius = 1.0
            btn.layer.masksToBounds = false
            btn.layer.cornerRadius = 7
            
            //btn.contentEdgeInsets = UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 7);
            btn.setTitle("\(number)", for: .normal)
            btn.tag = number
            //add three to stackview
            
            btn.snp.makeConstraints { (make) in
                make.height.width.equalTo(85)
            }
            return btn
        }()
        
        button.addTarget(self, action: #selector(handleTap(sender:)), for: .touchUpInside)
        
        return button
    }
}
