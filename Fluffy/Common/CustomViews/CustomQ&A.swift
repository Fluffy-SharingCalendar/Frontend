//
//  CustomQ&A.swift
//  Fluffy
//
//  Created by 손성아 on 12/17/24.
//

import UIKit

class CustomQ_A: UIStackView {
    // 질문에 답변하는 TextField
    private func answerTextField(_ placeholder: String, _ isPasswordField: Bool) -> UITextField {
        let textField = UITextField()
        
        
        textField.font = UIFont.systemFont(ofSize: 15)
        textField.textColor = UIColor(named: "TextColor")
        textField.tintColor = UIColor(named: "MainColor")
        
        textField.attributedPlaceholder = NSAttributedString(
                string: placeholder,
                attributes: [NSAttributedString.Key.foregroundColor: UIColor(named: "TextColor")!]
            )
        
        let paddingView = UIView(frame: CGRect(x: 0, y: 0, width: 25, height: textField.frame.height))
        textField.leftView = paddingView
        textField.leftViewMode = .always
        
        // 고정된 높이 설정
        textField.translatesAutoresizingMaskIntoConstraints = false
        textField.heightAnchor.constraint(equalToConstant: 50).isActive = true
        
        textField.isSecureTextEntry = isPasswordField
        
        return textField
    }
    
    // 비밀번호 입력 시 사용하는 질문 TextField
    private func questionTextField(_ image: UIImage?, _ placeholder: String) ->  UITextField {
        let textField = UITextField()
        
        textField.font = UIFont.systemFont(ofSize: 15)
        textField.textColor = UIColor(named: "TextColor")
        textField.tintColor = UIColor(named: "MainColor")
        
        textField.isSecureTextEntry = true
        
        textField.attributedPlaceholder = NSAttributedString(
                string: placeholder,
                attributes: [NSAttributedString.Key.foregroundColor: UIColor(named: "TextColor")!]
            )
        
        // 고정된 높이 설정
        textField.translatesAutoresizingMaskIntoConstraints = false
        textField.heightAnchor.constraint(equalToConstant: 50).isActive = true
        
        let iconView = UIImageView(frame: CGRect(x: 20, y: 0, width: 20, height: 20))
        iconView.image = image
        iconView.contentMode = .scaleAspectFit

        let iconContainerView = UIView(frame: CGRect(x: 0, y: 0, width: 55, height: 20))
        iconContainerView.addSubview(iconView)

        textField.leftView = iconContainerView
        textField.leftViewMode = .always
        
        return textField
    }
    
    // 회원 보안 질문 시 사용할 pull down button
    private func questionPullDownButton(_ image: UIImage?, _ title: String) ->  UIButton {
        let pullDownButton = UIButton()
        
        pullDownButton.contentHorizontalAlignment = .left
        pullDownButton.sizeToFit()
        
        
        var configuration = UIButton.Configuration.plain()
        
        configuration.image = image
        configuration.imagePlacement = .leading
        configuration.imagePadding = 15
        
        var attributedTitle = AttributedString(title)
        attributedTitle.font = .systemFont(ofSize: 15, weight: .regular)
        attributedTitle.foregroundColor = UIColor(named: "TextColor")
        configuration.attributedTitle = attributedTitle

        configuration.contentInsets = NSDirectionalEdgeInsets(top: 0, leading: 20, bottom: 0, trailing: 10)
        pullDownButton.configuration = configuration
        
        // 고정된 높이 설정
        pullDownButton.translatesAutoresizingMaskIntoConstraints = false
        pullDownButton.heightAnchor.constraint(equalToConstant: 50).isActive = true
        
        let options: [String] = ["키우는 반려동물의 이름은?", "아버지의 성함은?", "어머니의 성함은?", "졸업한 초등학교의 이름은?", "졸업한 중학교의 이름은?", "졸업한 고등학교의 이름은?", "나의 생일은?"]
        
        let actions = options.map { option in
                UIAction(title: option) { _ in
                    // 선택된 옵션을 버튼 제목으로 업데이트
                    var updatedTitle = AttributedString(option)
                    updatedTitle.font = .systemFont(ofSize: 15, weight: .regular)
                    updatedTitle.foregroundColor = UIColor(named: "TextColor")
                    
                    configuration.attributedTitle = updatedTitle
                    pullDownButton.configuration = configuration
                }
            }
        
        
        pullDownButton.menu = UIMenu(title: "", children: actions)
        pullDownButton.showsMenuAsPrimaryAction = true
    
        return pullDownButton
    }
    
    override init(frame: CGRect) {
            super.init(frame: frame)
            setupUI()
    }
        
    required init(coder: NSCoder) {
            super.init(coder: coder)
            setupUI()
    }
    
    func setupUI() {
        self.axis = .vertical
        self.alignment = .fill
        self.distribution = .fill
        
        self.layer.borderColor = UIColor(named: "MainColor")?.cgColor
        self.layer.borderWidth = 1
        self.layer.cornerRadius = 5
    }
    
    func setStackView(_ isPasswordField:Bool, _ image: UIImage?, _ answerPlaceholder: String, _ questionPlaceholder: String) {
        if (isPasswordField) {
            // questionTextField 생성 및 추가
            let questionField = questionTextField(image, questionPlaceholder)
            self.addArrangedSubview(questionField)
        
            let lineView = UIView()
            lineView.layer.borderColor = UIColor(named: "MainColor")?.cgColor
            lineView.layer.borderWidth = 1
            NSLayoutConstraint.activate([
                lineView.heightAnchor.constraint(equalToConstant: 1)
                ])
            self.addArrangedSubview(lineView)
            
            // answerTextField 생성 및 추가
            let answerField = answerTextField(answerPlaceholder, isPasswordField)
            self.addArrangedSubview(answerField)
        } else {
            let questionField = questionPullDownButton(image, questionPlaceholder)
            self.addArrangedSubview(questionField)
            
            let lineView = UIView()
            lineView.layer.borderColor = UIColor(named: "MainColor")?.cgColor
            lineView.layer.borderWidth = 1
            NSLayoutConstraint.activate([
                lineView.heightAnchor.constraint(equalToConstant: 1)
                ])
            self.addArrangedSubview(lineView)
            
            let answerField = answerTextField(answerPlaceholder, isPasswordField)
            self.addArrangedSubview(answerField)
        }
    }
}
