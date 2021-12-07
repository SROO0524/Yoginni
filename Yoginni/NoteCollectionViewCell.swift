//
//  NoteCollectionViewCell.swift
//  Yoginni
//
//  Created by 김믿음 on 2021/12/07.
//

import UIKit
import SnapKit

class NoteCollectionViewCell: UICollectionViewCell {
    
    let cellImageView = UIImageView()
    let label = UILabel()
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        setLayout()
    }
    
    override init(frame: CGRect) {
        super.init(frame: .zero)
        setLayout()
    }
    
    func setLayout() {
        contentView.addSubview(cellImageView)
        contentView.addSubview(label)
//        cellImageView.image = UIImage(systemName: "note.text")
        cellImageView.tintColor = .black
        label.textAlignment = .center
        label.font = UIFont.systemFont(ofSize: 12)
        label.text = "수련일기"
        
        cellImageView.snp.makeConstraints { make in
            make.top.equalTo(contentView.snp.top).offset(10)
            make.centerX.equalTo(contentView.snp.centerX)
            make.width.height.equalTo(24)
        }
        
        label.snp.makeConstraints { make in
            make.top.equalTo(cellImageView.snp.bottom).offset(10)
            make.centerX.equalTo(cellImageView.snp.centerX)
            make.height.equalTo(15)
        }
        
    }
}
