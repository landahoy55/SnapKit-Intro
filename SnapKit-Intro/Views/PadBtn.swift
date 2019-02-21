//
//  PadBtn.swift
//  SnapKit-Intro
//
//  Created by P Malone on 08/02/2019.
//  Copyright © 2019 landahoy55. All rights reserved.
//

import UIKit

class PadBtn: UIButton {

    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setUp()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    func setUp(){
        
        self.setTitle("1", for: .normal)
        //btn.titleLabel?.font = .systemFont(ofSize: 72)
        self.titleLabel?.font = UIFont(name: "Rubik-Bold", size: 72)
        self.titleLabel?.textAlignment = NSTextAlignment.center
        self.setTitleColor(.white, for: .normal)
        self.backgroundColor = UIColor.CustomColors.Pinks.Middle
        self.layer.cornerRadius = 7
        
        //shadows
        self.layer.shadowColor = UIColor(r:177, g:49, b:83).cgColor
        self.layer.shadowOffset = CGSize(width: 0.0, height: 2.0)
        self.layer.shadowOpacity = 1.0
        self.layer.shadowRadius = 1.0
        self.layer.masksToBounds = false
        self.layer.cornerRadius = 7
    }
    
}
