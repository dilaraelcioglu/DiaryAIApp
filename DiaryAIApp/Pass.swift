//
//  Pass.swift
//  DiaryAIApp
//
//  Created by Dilara Elçioğlu on 17.02.2024.
//

import Foundation
import UIKit

final class Pass {

    static func presentFullPage(_ from: UIViewController, _ to: UIViewController) {
        to.modalPresentationStyle = .fullScreen
        from.present(to, animated: false)
    }

    static func presentPageSheet(_ from: UIViewController, _ to: UIViewController) {
        to.modalPresentationStyle = .pageSheet
        from.present(to, animated: true)
    }
    
    static func navigation(_ from: UIViewController, _ to: UIViewController) {
        from.navigationController?.pushViewController(to, animated: true)
    }
    
    @objc func navigateBack(_ from: UIViewController) {
        from.navigationController?.popViewController(animated: true)
    }
    
    @objc func presentBack(from: UIViewController) {
        from.dismiss(animated: true)
    }
}
