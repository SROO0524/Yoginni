//
//  PracticeViewController.swift
//  Yoginni
//
//  Created by Develop on 2021/07/02.
//

import UIKit
// 수련기록 
class PracticeViewController: UIViewController {
    
    let tableview = UITableView()

    override func viewDidLoad() {
        super.viewDidLoad()
        let rightBT = UIBarButtonItem(image: UIImage(systemName: "square.and.pencil"), style: .plain, target: self, action: #selector(rightNewNote))
        navigationController?.navigationItem.rightBarButtonItem = rightBT
//
//        tableview.delegate = self
//        tableview.dataSource = self

        view.backgroundColor = .systemTeal
    }
    
    @objc func rightNewNote() {
        
    }

}

extension PracticeViewController: UITableViewDelegate {
    
}

//extension PracticeViewController: UITableViewDataSource {
//    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//        2
//    }
//
//    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//        <#code#>
//    }
//
//
//}
