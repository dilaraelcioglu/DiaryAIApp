//
//  ViewController.swift
//  DiaryAIApp
//
//  Created by Dilara Elçioğlu on 17.02.2024.
//

import UIKit
import SnapKit

class WriteDiaryController: UIViewController {
    
    private lazy var titleView: UITextView = {
        let temp = UITextView()
        temp.text = "17.11.2024"
        temp.font = UIFont(name: "Helvetica-Bold", size: 18)
        temp.backgroundColor = .lightGray
        temp.layer.cornerRadius = 5
        temp.textContainerInset = UIEdgeInsets(top: 16, left: 14, bottom: 20, right: 14)
        return temp
    }()
    
    private lazy var saveButton: UIButton = {
        let temp = UIButton()
        temp.layer.cornerRadius = 5
        temp.backgroundColor = .orange
        temp.setTitle("Kaydet", for: .normal)
        temp.addTarget(self, action: #selector(saveTapped), for: .touchUpInside)
        return temp
    }()
    
    private lazy var textView: UITextView = {
        let temp = UITextView()
        temp.font = UIFont(name: "Helvetica-Medium", size: 18)
        temp.backgroundColor = .lightGray
        temp.layer.cornerRadius = 5
        temp.textContainerInset = UIEdgeInsets(top: 16, left: 14, bottom: 20, right: 14)
        return temp
    }()
    
    private lazy var photoView: UIImageView = {
        let temp = UIImageView()
        temp.layer.borderWidth = 1
        temp.layer.borderColor = UIColor.gray.cgColor
        temp.isUserInteractionEnabled = true
        temp.contentMode = .scaleAspectFit
        temp.layer.cornerRadius = 4
        return temp
    }()
    
    private lazy var plusButtonImage: UIImageView = {
        let temp = UIImageView()
        temp.image = UIImage(systemName: "plus.square.dashed")
        return temp
    }()
    
    private lazy var plusButton: UIButton = {
        let temp = UIButton()
        temp.addTarget(self, action: #selector(addPhotoTapped), for: .touchUpInside)
        return temp
    }()
    
    private lazy var photoLabel: UILabel = {
        let temp = UILabel()
        temp.text = "Fotoğraf çekin veya galeriden yükleyin."
        return temp
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
        
    }
    
    private func setupUI() {
        view.backgroundColor = .white
        
        view.addSubview(saveButton)
        saveButton.snp.makeConstraints { make in
            make.top.equalToSuperview().offset(100)
            make.trailing.equalToSuperview().offset(-20)
            make.height.equalTo(spaceY(40))
            make.width.equalTo(100)
        }
        
        view.addSubview(titleView)
        titleView.snp.makeConstraints { make in
            make.top.equalToSuperview().offset(100)
            make.trailing.equalTo(saveButton.snp.leading).offset(-12)
            make.leading.equalToSuperview().offset(20)
            make.height.equalTo(spaceY(40))
        }
        
        view.addSubview(textView)
        textView.snp.makeConstraints { make in
            make.top.equalTo(titleView.snp.bottom).offset(20)
            make.centerX.equalToSuperview()
            make.width.equalToSuperview().offset(-40)
            make.height.equalTo(400)
        }
        
        view.addSubview(photoView)
        photoView.snp.makeConstraints { make in
            make.top.equalTo(textView.snp.bottom).offset(20)
            make.centerX.equalToSuperview()
            make.width.equalToSuperview().offset(-40)
            make.bottom.equalToSuperview().offset(-100)
        }
        
        photoView.addSubview(plusButton)
        plusButton.snp.makeConstraints { make in
            make.top.equalToSuperview().offset(spaceY(51))
            make.centerX.equalToSuperview()
            make.width.height.equalTo(spaceY(40))
        }
        
        plusButton.addSubview(plusButtonImage)
        plusButtonImage.snp.makeConstraints { make in
            make.edges.equalToSuperview()
        }
        
        photoView.addSubview(photoLabel)
        photoLabel.snp.makeConstraints { make in
            make.top.equalTo(plusButton.snp.bottom).offset(spaceY(10))
            make.centerX.equalToSuperview()
        }
    }

    @objc private func addPhotoTapped() {
        print("tapped")
    }
    
    @objc private func saveTapped() {
        print("tapped")
    }
}

