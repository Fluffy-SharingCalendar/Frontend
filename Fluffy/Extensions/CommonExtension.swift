//
//  CommonExtension.swift
//  Fluffy
//
//  Created by 손성아 on 12/10/24.
//

// UI 관련 확장

import UIKit

extension UIViewController {
    func setupKeybaordObserver() {
        // 키보드가 올라올 때를 감지
        NotificationCenter.default.addObserver(self, selector: #selector(UIViewController.keyboardWillShow), name: UIResponder.keyboardWillShowNotification, object: nil)
        
        // 키보드가 내려갈 때를 감지
        NotificationCenter.default.addObserver(self, selector: #selector(UIViewController.keyboardWillHide), name: UIResponder.keyboardWillHideNotification, object: nil)
    }
    
    // 키보드가 올라올 때 실행될 메서드
    @objc func keyboardWillShow(notification: NSNotification) {
        print("키보드 올라옴")
        
        guard let activeField = self.view.findFirstResponder() as? UIView else {
            return
            }
        guard let keyboardFrame = notification.userInfo?[UIResponder.keyboardFrameEndUserInfoKey] as?   NSValue else {return}
        
        let keyboardHeight = keyboardFrame.cgRectValue.height
        
        // 텍스트 필드의 현재 위치 계산
        let fieldFrame = activeField.convert(activeField.bounds, to: self.view)
        let bottomOfField = fieldFrame.maxY
        
        // 키보드가 화면에서 올라오기 시작하는 시점
        let screenHeight = UIScreen.main.bounds.height
        let topOfKeyboard = screenHeight - keyboardHeight
        
        // 텍스트 필드가 키보드에 가려지면 화면을 올림
        if bottomOfField > topOfKeyboard {
            let offset = bottomOfField - topOfKeyboard + 10
            UIView.animate(withDuration: 0.3) {
                self.view.transform = CGAffineTransform(translationX: 0, y: -offset)
            }
        }
        
    }
    
    // 키보드 높이만큼 뷰의 y값 내리기
    @objc func keyboardWillHide(notification: NSNotification) {
        print("키보드 내려감")
        UIView.animate(withDuration: 0.3) {
                    self.view.transform = .identity
                }
    }
}
 
extension UIView {
    // 현재 포커스된 뷰를 찾는 헬퍼 메서드
    func findFirstResponder() -> UIResponder? {
        if self.isFirstResponder {
            return self
        }
        for subview in self.subviews {
            if let responder = subview.findFirstResponder() {
                return responder
            }
        }
        return nil
    }
}
