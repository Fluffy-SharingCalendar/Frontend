//
//  SignUpViewController.swift
//  Fluffy
//
//  Created by 손성아 on 12/16/24.
//

import UIKit

class SignUpViewController: UIViewController {
    @IBOutlet weak var nameFieldView: CustomTextField!
    @IBOutlet weak var idFieldView: CustomTextField!
    @IBOutlet weak var duplicateCheckButton: UIButton! // 중복확인 버튼 - 결과는 Alert 창으로
    @IBOutlet weak var passwordStackView: CustomQ_A!
//    @IBOutlet weak var questionStackView: CustomQ_A!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        setupKeybaordObserver()
        
        nameFieldView.attributedPlaceholder = NSAttributedString(
                 string: "이름을 입력하세요.",
                 attributes: [NSAttributedString.Key.foregroundColor: UIColor(named: "TextColor")!]
             )
        nameFieldView.setLeadingIcon(UIImage(named: "Name")!)
        
        idFieldView.attributedPlaceholder = NSAttributedString(
                 string: "아이디를 입력하세요.",
                 attributes: [NSAttributedString.Key.foregroundColor: UIColor(named: "TextColor")!]
             )
        idFieldView.setLeadingIcon(UIImage(named: "User")!)
        
        let attributedTitle = NSAttributedString(
                string: "중복확인",
                attributes: [
                    .underlineStyle: NSUnderlineStyle.single.rawValue,
                    .foregroundColor: UIColor(named: "AccentColor")!,
                    .font: UIFont.systemFont(ofSize: 11)
                ]
            )
       duplicateCheckButton.setAttributedTitle(attributedTitle, for: .normal)
        
        passwordStackView.setStackView(true, UIImage(named: "Unlock")!, "비밀번호를 다시 입력하세요.", "비밀번호를 입력하세요.")
        passwordStackView.translatesAutoresizingMaskIntoConstraints = false
//        
//        questionStackView.setStackView(false, UIImage(named: "Chat")!, "답변을 입력하세요.", "키우는 반려동물의 이름은?")
//        questionStackView.translatesAutoresizingMaskIntoConstraints = false
    }

}
