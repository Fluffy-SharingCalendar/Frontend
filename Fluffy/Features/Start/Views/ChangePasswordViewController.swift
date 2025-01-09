//
//  ChangePasswordViewController.swift
//  Fluffy
//
//  Created by 손성아 on 1/10/25.
//

import UIKit

class ChangePasswordViewController: UIViewController {
    @IBOutlet weak var passwordStackView: CustomQ_A!
    @IBOutlet weak var changePWButton: CustomButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        setupKeybaordObserver()

        passwordStackView.setStackView(true, UIImage(named: "Unlock")!, "비밀번호를 다시 입력하세요.", "비밀번호를 입력하세요.")
        passwordStackView.translatesAutoresizingMaskIntoConstraints = false
        
        changePWButton.setTitle("비밀번호 변경", for: .normal)
    }
}
