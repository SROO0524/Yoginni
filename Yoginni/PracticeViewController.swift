//
//  PracticeViewController.swift
//  Yoginni
//
//  Created by Develop on 2021/07/02.
//

import UIKit
// 수련기록 
class PracticeViewController: UIViewController {
    
//    let tableview = UITableView()
//    let collectionView = NoteCollectionView()
    var customCollectionView : NoteCollectionView!
    var data : [String] = ["Ashtanga Yoga","Hatha Yoga","Vinyasa Yoga","Flying Yoga","ETC"]
    var imageData : [UIImage] = [UIImage(named: "a")!, UIImage(named: "h")!,UIImage(named: "v")!,UIImage(named: "f")!,UIImage(named: "e")!]

    override func viewDidLoad() {
        super.viewDidLoad()
        let rightBT = UIBarButtonItem(image: UIImage(systemName: "square.and.pencil"), style: .plain, target: self, action: #selector(rightNewNote))
        navigationController?.navigationBar.topItem?.rightBarButtonItem = rightBT
        navigationController?.navigationBar.topItem?.rightBarButtonItem?.tintColor = .black
//
//        tableview.delegate = self
//        tableview.dataSource = self
        
        view.backgroundColor = .white
        collectionViewConfifure()
        customCollectionView.register(NoteCollectionViewCell.classForCoder(), forCellWithReuseIdentifier: "NoteCollectionViewCell")
        customCollectionView.delegate = self
        customCollectionView.dataSource = self
    }
    
    @objc func rightNewNote() {
        
    }
    
    func collectionViewConfifure() {
        customCollectionView = NoteCollectionView(frame: CGRect.zero, collectionViewLayout: UICollectionViewFlowLayout.init())
        customCollectionView.translatesAutoresizingMaskIntoConstraints = false
        customCollectionView.backgroundColor = .white
        self.view.addSubview(customCollectionView)
        customCollectionView.snp.makeConstraints { make in
            make.top.equalTo(view.safeAreaLayoutGuide.snp
                                .top).offset(35)
            make.leading.equalTo(view.safeAreaLayoutGuide.snp
                                    .leading).offset(30)
            make.trailing.equalTo(view.safeAreaLayoutGuide.snp
                                    .trailing).inset(30)
            make.bottom.equalTo(view.safeAreaLayoutGuide.snp
                                    .bottom).inset(35)
        }
    }
    
    

}

extension PracticeViewController: UICollectionViewDelegate {
    
}

extension PracticeViewController: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return data.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = customCollectionView.dequeueReusableCell(withReuseIdentifier: "NoteCollectionViewCell", for: indexPath) as! NoteCollectionViewCell
        cell.label.text = data[indexPath.row]
        cell.cellImageView.image = imageData[indexPath.row]
        cell.layer.cornerRadius = 5
        cell.layer.borderWidth = 1
        cell.layer.borderColor = UIColor.black.cgColor
        cell.clipsToBounds = true
        return cell
    }
    
    
}

extension PracticeViewController: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let itemSpacing = CGFloat(16.0)
        let collectionWidth = collectionView.frame.width
//        let collectionHeight = collectionView.frame.height
        let itemsInRow = CGFloat(3)
        let width = (collectionWidth / itemsInRow) - (itemSpacing)
        return CGSize(width: width, height: 68)
    }
}

//extension PracticeViewController: UITableViewDelegate {
//
//}

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
