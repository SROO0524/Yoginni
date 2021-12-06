//
//  MainTabBarController.swift
//  Yoginni
//
//  Created by Develop on 2021/07/02.
//

import UIKit

class MainTabBarController: UITabBarController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        UITabBar.appearance().barTintColor = .systemBackground
        tabBar.tintColor = .label
        tabbarSetup()
    }
    
    
    fileprivate func createNavController(for rootViewController: UIViewController,
                                         title: String,
                                         image: UIImage) -> UIViewController {
        let navController = UINavigationController(rootViewController: rootViewController)
        navController.tabBarItem.title = title
        navController.tabBarItem.image = image
        navController.navigationBar.prefersLargeTitles = true
        rootViewController.navigationItem.title = title
        return navController
    }
    
    func tabbarSetup() {
        viewControllers = [
            createNavController(for: CalendarViewController(), title: NSLocalizedString("전체일지", comment: ""), image: UIImage(systemName: "calendar")!),
            createNavController(for: PracticeViewController(), title: NSLocalizedString("수련기록", comment: ""), image: UIImage(systemName: "note.text")!),
            createNavController(for: FindStudioViewController(), title: NSLocalizedString("요가원찾기", comment: ""), image: UIImage(systemName: "magnifyingglass")!),
            createNavController(for: MypageViewController(), title: NSLocalizedString("마이페이지", comment: ""), image: UIImage(systemName: "person.crop.circle")!)
            
            
            
        ]
    }
    
}
