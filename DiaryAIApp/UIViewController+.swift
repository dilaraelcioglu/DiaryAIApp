//
//  UIViewController+.swift
//  DiaryAIApp
//
//  Created by Dilara Elçioğlu on 17.02.2024.
//

import UIKit

extension UIViewController {
    
    func hideKeyboardWhenTappedAround() {
        let tapGesture = UITapGestureRecognizer(target: self,
                                                action: #selector(hideKeyboard))
        tapGesture.cancelsTouchesInView = false
        
        view.addGestureRecognizer(tapGesture)
    }
    
    @objc func hideKeyboard() {
        view.endEditing(true)
    }
    
    //Just for height
    func spaceY(_ space: Double) -> Double {
        let viewHeight = Double(view.frame.height)
        let rate = space / 844
        let spacing = viewHeight * rate
        return spacing
    }
    
    func spaceX(_ space: Double) -> Double {
        let viewHeight = Double(view.frame.width)
        let rate = space / 340
        let spacing = viewHeight * rate
        return spacing
    }
    
    func fontFix(_ space: Double) -> Int {
        let viewHeight = Double(view.frame.height)
        let rate = space / 844.0
        let spacing = viewHeight * rate
        return Int(spacing)
    }
    
}

