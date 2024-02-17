//
//  ReadDiaryController.swift
//  DiaryAIApp
//
//  Created by Dilara Elçioğlu on 17.02.2024.
//

import UIKit
import SnapKit

class ReadDiaryController: UIViewController {
    
    private lazy var bookImage: UIImageView = {
        let temp = UIImageView()
        temp.backgroundColor = .white
        temp.layer.cornerRadius = 5
        temp.isUserInteractionEnabled = true
        return temp
    }()

    
    private lazy var bookTitle: UILabel = {
        let temp = UILabel()
        temp.text = "My Diary"
        temp.textColor = .systemPink
        temp.font =  UIFont(name: "Helvetica-Bold", size: 38)
        return temp
    }()
    
    private lazy var lockButton: UIButton = {
        let temp = UIButton()
        temp.addTarget(self, action: #selector(lockTapped), for: .touchUpInside)
        temp.tintColor = .orange
        temp.layer.cornerRadius = 5
        temp.setBackgroundImage(UIImage(systemName: "lock.fill"), for: .normal)
        return temp
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
    }
    
    private func setupUI() {
        view.backgroundColor = .purple
        view.addSubview(bookImage)
        bookImage.snp.makeConstraints { make in
            make.top.equalToSuperview().offset(180)
            make.width.equalToSuperview().offset(-80)
            make.centerX.equalToSuperview()
            make.bottom.equalToSuperview().offset(-180)
        }
        
        bookImage.addSubview(bookTitle)
        bookTitle.snp.makeConstraints { make in
            make.top.equalToSuperview().offset(80)
            make.centerX.equalToSuperview()
        }
        
        bookImage.addSubview(lockButton)
        lockButton.snp.makeConstraints { make in
            make.center.equalToSuperview()
            make.width.height.equalTo(100)
        }

    }
    
    @objc private func lockTapped() {
        print("lockTapped")
    }
    
}
