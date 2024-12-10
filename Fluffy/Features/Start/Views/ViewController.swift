//
//  ViewController.swift
//  Fluffy
//
//  Created by 손성아 on 12/4/24.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var loginStackView: UIStackView!
    
    @IBOutlet weak var cloudImage: UIImageView!
    @IBOutlet weak var fluffyImage: UIImageView!
    
    @IBOutlet weak var idTextField: CustomTextField!
    @IBOutlet weak var passwordTextField: CustomTextField!
    @IBOutlet weak var loginButton: CustomButton!
    
    @IBOutlet weak var findPasswordButton: UIButton!
    @IBOutlet weak var signupButton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.

        idTextField.placeholder = "아이디를 입력하세요."
        idTextField.setLeadingIcon(UIImage(named: "User")!)
        
        passwordTextField.placeholder = "비밀번호를 입력하세요."
        passwordTextField.setLeadingIcon(UIImage(named: "Unlock")!)
        passwordTextField.isSecureTextEntry = true
        
        loginButton.setTitle("로그인", for: .normal)
        
        findPasswordButton.contentHorizontalAlignment = .right
        findPasswordButton.sizeToFit()
        
        signupButton.contentHorizontalAlignment = .left
        signupButton.sizeToFit()
        
        loginStackView.setCustomSpacing(30, after: cloudImage)
        loginStackView.setCustomSpacing(50, after: fluffyImage)
        loginStackView.setCustomSpacing(7, after: idTextField)
        loginStackView.setCustomSpacing(35, after: passwordTextField)
        loginStackView.setCustomSpacing(20, after: loginButton)
    }
}

