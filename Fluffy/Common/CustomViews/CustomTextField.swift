//
//  CustomTextField.swift
//  Fluffy
//
//  Created by 손성아 on 12/5/24.
//

import UIKit

class CustomTextField: UITextField {
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupUI()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        setupUI()
    }
    
    private func setupUI() {
        self.font = UIFont.systemFont(ofSize: 15)
        self.textColor = UIColor(named: "TextColor")
        self.tintColor = UIColor(named: "MainColor")
        
        self.layer.borderWidth = 1
        self.layer.borderColor = UIColor(named: "MainColor")?.cgColor
        self.layer.cornerRadius = 5

        let paddingView = UIView(frame: CGRect(x: 0, y: 0, width: 10, height: self.frame.height))
        self.leftView = paddingView
        self.leftViewMode = .always
        
        // TextField의 Top, Bottom에 패딩 주는 법
        NSLayoutConstraint.activate(
            [self.heightAnchor.constraint(equalToConstant: self.frame.height+20)])
        
    }
    
    func setLeadingIcon(_ image: UIImage) {
        let iconView = UIImageView(frame: CGRect(x: 20, y: 0, width: 20, height: 20))
        iconView.image = image
        iconView.contentMode = .scaleAspectFit

        let iconContainerView = UIView(frame: CGRect(x: 0, y: 0, width: 45, height: 20))
        iconContainerView.addSubview(iconView)

        self.leftView = iconContainerView
        self.leftViewMode = .always
    }
}
