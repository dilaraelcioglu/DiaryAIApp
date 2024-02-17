//
//  CalendarController.swift
//  DiaryAIApp
//
//  Created by Dilara Elçioğlu on 17.02.2024.
//

import UIKit
import SnapKit

class CalendarController: UIViewController {
    private lazy var addTargetButton: UIButton = {
        let temp = UIButton()
        temp.layer.cornerRadius = 5
        temp.backgroundColor = .orange
        temp.setTitle("Hatırlatma Ekle", for: .normal)
        temp.addTarget(self, action: #selector(saveTapped), for: .touchUpInside)
        return temp
    }()
    
    private lazy var tagetCollection: UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        layout.minimumInteritemSpacing = 16
        layout.minimumLineSpacing = 16
        layout.scrollDirection = .vertical
        layout.itemSize = CGSize(width: view.frame.size.width, height: spaceY(52))

        let temp = UICollectionView(frame: .zero, collectionViewLayout: layout)
        temp.layer.cornerRadius = 5
        temp.register(ReminderCell.self, forCellWithReuseIdentifier: "cell")
        temp.delegate = self
        temp.dataSource = self
        temp.backgroundColor = .white
        temp.isPagingEnabled = false
        temp.showsHorizontalScrollIndicator = false
        return temp
    }()
    
    private lazy var calendarView: UIView = {
        let temp = UIView()
        temp.backgroundColor = .lightGray
        temp.layer.cornerRadius = 5
        return temp
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemPink
        setupUI()
    }
    
    private func setupUI() {
        view.addSubview(addTargetButton)
        addTargetButton.snp.makeConstraints { make in
            make.top.equalToSuperview().offset(100)
            make.centerX.equalToSuperview()
            make.width.equalToSuperview().offset(-40)
            make.height.equalTo(40)
        }
        
        view.addSubview(tagetCollection)
        tagetCollection.snp.makeConstraints { make in
            make.top.equalTo(addTargetButton.snp.bottom).offset(20)
            make.centerX.equalToSuperview()
            make.width.equalToSuperview().offset(-40)
            make.height.equalTo(300)
        }
        
        view.addSubview(calendarView)
        calendarView.snp.makeConstraints { make in
            make.top.equalTo(tagetCollection.snp.bottom).offset(20)
            make.centerX.equalToSuperview()
            make.width.equalToSuperview().offset(-40)
            make.height.equalTo(400)
        }
    }
    
    @objc private func saveTapped() {
        print("saveTapped")
    }

}

extension CalendarController: UICollectionViewDelegate, UICollectionViewDataSource {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 30
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath)
        cell.backgroundColor = .link
        return cell
    }
    
}
