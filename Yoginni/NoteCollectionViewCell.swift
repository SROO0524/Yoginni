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
    
    override var isSelected: Bool {
        didSet {
            if isSelected {
                cellImageView.tintColor = .systemBlue
                label.textColor = .systemBlue
            } else {
                cellImageView.tintColor = .black
                label.textColor = .black
            }
        }
    }
    
    func setLayout() {
        contentView.tintColor = .systemBlue
        contentView.addSubview(cellImageView)
        contentView.addSubview(label)
        cellImageView.tintColor = .black
        cellImageView.image?.withRenderingMode(.alwaysTemplate)
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
