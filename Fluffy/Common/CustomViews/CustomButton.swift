//
//  CustomButton.swift
//  Fluffy
//
//  Created by 손성아 on 12/6/24.
//

import UIKit

class CustomButton: UIButton {
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupUI()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        setupUI()
    }
    
    private func  setupUI() {
        self.backgroundColor = UIColor(named: "MainColor")!
        self.layer.cornerRadius = 5
        
        self.titleLabel?.font = UIFont.systemFont(ofSize: 16, weight: .medium)
        self.setTitleColor(.white, for: .normal)
        
        NSLayoutConstraint.activate(
            [self.heightAnchor.constraint(equalToConstant: self.frame.height+20)])
    }
}
