//
//  SignUpViewController.swift
//  Fluffy
//
//  Created by 손성아 on 12/16/24.
//

import UIKit

class SignUpViewController: UIViewController {
    @IBOutlet weak var passwordStackView: CustomQ_A!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        passwordStackView.setStackView(true, UIImage(named: "Unlock")!, "비밀번호를 다시 입력하세요.", "비밀번호를 입력하세요.")
        passwordStackView.translatesAutoresizingMaskIntoConstraints = false
    }

}
