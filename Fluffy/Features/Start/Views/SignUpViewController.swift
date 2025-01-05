//
//  SignUpViewController.swift
//  Fluffy
//
//  Created by 손성아 on 12/16/24.
//

import UIKit

class SignUpViewController: UIViewController {
    @IBOutlet weak var passwordStackView: CustomQ_A!
    @IBOutlet weak var questionStackView: CustomQ_A!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        setupKeybaordObserver()
        
        passwordStackView.setStackView(true, UIImage(named: "Unlock")!, "비밀번호를 다시 입력하세요.", "비밀번호를 입력하세요.")
        passwordStackView.translatesAutoresizingMaskIntoConstraints = false
        
        questionStackView.setStackView(false, UIImage(named: "Chat")!, "답변을 입력하세요.", "키우는 반려동물의 이름은?")
        questionStackView.translatesAutoresizingMaskIntoConstraints = false
    }

}
