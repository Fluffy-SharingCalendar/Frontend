//
//  LoginViewTextButton.swift
//  Fluffy
//
//  Created by 손성아 on 12/6/24.
//

import UIKit

class LoginViewTextButton: UIButton {
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupUI()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        setupUI()
    }
    
    private func setupUI() {
        self.titleLabel?.font = UIFont.systemFont(ofSize: 11, weight: .medium)
        self.setTitleColor(.gray, for: .normal)
    }
}
