//
//  DisplayView.swift
//  SnapKit-Intro
//
//  Created by P Malone on 09/02/2019.
//  Copyright © 2019 landahoy55. All rights reserved.
//

import UIKit
import SnapKit
import Bond
import ReactiveKit

class DisplayView: UIView {
    
    //var label = Observable<Int?>(0)
    
    let outputLabel: UILabel = {
       let lbl = UILabel()
            //lbl.backgroundColor = .yellow
            lbl.font = UIFont(name: "Rubik-Bold", size: 60)
            lbl.textColor = UIColor.CustomColors.Purples.Dark
            lbl.textAlignment = .left
       return lbl
    }()
    
    let questionLabel: UILabel = {
       let lbl = UILabel()
            lbl.text = "8x5"
            //lbl.backgroundColor = .yellow
            lbl.font = UIFont(name: "Rubik-Bold", size: 72)
            lbl.textColor = UIColor.CustomColors.Purples.Dark
            lbl.textAlignment = .left
       return lbl
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        //outputLabel.text = "\(String(describing: label.value))"
        setup()
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setup()
    }
    
    fileprivate func setup() {
        
        //self.backgroundColor = .red
        
        self.addSubview(outputLabel)
        self.addSubview(questionLabel)
        
        outputLabel.snp.makeConstraints { (make) in
            
            make.height.equalTo(100)
            make.width.equalTo(300)
            make.center.equalToSuperview()
        }
        
        questionLabel.snp.makeConstraints { (make) in
            make.leading.equalTo(outputLabel.snp.leading)
            make.trailing.equalTo(outputLabel.snp.trailing)
            make.bottom.equalTo(outputLabel.snp.top)
        }
        
        
    }
    
}
