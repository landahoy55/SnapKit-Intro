//
//  DisplayView.swift
//  SnapKit-Intro
//
//  Created by P Malone on 09/02/2019.
//  Copyright © 2019 landahoy55. All rights reserved.
//

import UIKit
import SnapKit

class DisplayView: UIView {
    
    let outputLabel: UILabel = {
       let lbl = UILabel()
            lbl.font = UIFont(name: "Rubik-Bold", size: 72)
            lbl.textColor = .black
            lbl.text = "18"
            lbl.textAlignment = .center
            lbl.backgroundColor = .yellow
       return lbl
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setup()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setup()
    }
    
    fileprivate func setup() {

        self.addSubview(outputLabel)
        outputLabel.snp.makeConstraints { (make) in
            make.height.equalTo(100)
            make.width.equalTo(200)
            make.center.equalToSuperview()
        }
        
        
    }
    
}