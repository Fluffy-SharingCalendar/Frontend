//
//  FindPasswordViewController.swift
//  Fluffy
//
//  Created by 손성아 on 1/10/25.
//

import UIKit

class FindPasswordViewController: UIViewController {
    @IBOutlet weak var idTextField: CustomTextField!
    @IBOutlet weak var questionStackView: CustomQ_A!
    @IBOutlet weak var signUpButton: CustomButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        setupKeybaordObserver()
        
        idTextField.attributedPlaceholder = NSAttributedString(
            string: "아이디를 입력하세요.",
            attributes: [NSAttributedString.Key.foregroundColor: UIColor(named: "TextColor")!]
        )
        idTextField.setLeadingIcon(UIImage(named: "User")!)
        
        questionStackView.setStackView(false, UIImage(named: "Chat")!, "답변을 입력하세요.", "키우는 반려동물의 이름은?")
        questionStackView.translatesAutoresizingMaskIntoConstraints = false
     
        signUpButton.setTitle("비밀번호 찾기", for: .normal)
    }
}
