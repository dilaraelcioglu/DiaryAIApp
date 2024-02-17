//
//  TabbarViewController.swift
//  DiaryAIApp
//
//  Created by Dilara Elçioğlu on 17.02.2024.
//

import UIKit

class TabbarViewController: UITabBarController, UITabBarControllerDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
    }
    
    private func setupUI() {
        UITabBar.appearance().tintColor = .orange
        tabBar.isTranslucent = false
        tabBar.backgroundColor = .white
        viewControllers = [createFirstPage(), createSecondPage(), createThirdPage()]
        delegate = self
    }
    
    func createFirstPage() -> UINavigationController {
        let firstVC = WriteDiaryController()
        firstVC.tabBarItem = UITabBarItem(title: "Yaz", image: UIImage(systemName: "pencil.circle.fill"), tag: 2)
        return UINavigationController(rootViewController: firstVC)
    }

    func createSecondPage() -> UINavigationController {
        let secondVC = ReadDiaryController()
        secondVC.tabBarItem = UITabBarItem(title: "Oku", image: UIImage(systemName: "book.circle.fill"), tag: 3)
        return UINavigationController(rootViewController: secondVC)
    }

    func createThirdPage() -> UINavigationController {
        let thirdVC = CalendarController()
        thirdVC.tabBarItem = UITabBarItem(title: "Hatırlat", image: UIImage(systemName: "calendar.circle.fill"), tag: 4)
        return UINavigationController(rootViewController: thirdVC)
    }
    
}
