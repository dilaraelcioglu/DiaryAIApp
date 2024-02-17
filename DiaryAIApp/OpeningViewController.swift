//
//  OpeningViewController.swift
//  DiaryAIApp
//
//  Created by Dilara Elçioğlu on 17.02.2024.
//

import UIKit

class OpeningViewController: UIViewController {
    
    private lazy var logo: UILabel = {
        let temp = UILabel()
        temp.text = "My Diary"
        temp.font =  UIFont(name: "Helvetica-Bold", size: 38)
        temp.textColor = .orange
        return temp
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
    }
    
    private func setupUI() {
        view.backgroundColor = .white
        view.addSubview(logo)
        logo.snp.makeConstraints { make in
            make.center.equalToSuperview()
        }
        
        UIView.animate(withDuration: 2.3, delay: 0.2, options: .curveEaseInOut, animations: { [weak self] in
            self?.logo.alpha = 1.0
        })
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 2.5) {
            Pass.presentFullPage(self, TabbarViewController())
        }
    }
    
}
