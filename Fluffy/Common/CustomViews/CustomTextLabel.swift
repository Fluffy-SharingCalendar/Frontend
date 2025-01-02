//
//  CustomTextLabel.swift
//  Fluffy
//
//  Created by 손성아 on 12/17/24.
//

import UIKit

class CustomTextLabel: UILabel {
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupUI()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        setupUI()
    }
    
    private func setupUI() {
        self.font = UIFont.systemFont(ofSize: 13, weight: .semibold)
        self.tintColor = UIColor(named: "TitleColor")
    }
    
}
