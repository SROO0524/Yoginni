//
//  ViewController.swift
//  Yoginni
//
//  Created by Develop on 2021/07/02.
//

import UIKit
import FSCalendar
import SnapKit

// 전체일지
class CalendarViewController: UIViewController {
    
    var calendar = FSCalendar()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        
        calendar.delegate = self
        calendar.dataSource = self
        
        view.addSubview(calendar)
        setLayout()
        
//        글자색 변경
        calendar.appearance.weekdayTextColor = UIColor.systemRed
        calendar.appearance.headerTitleColor = UIColor.systemRed
        calendar.appearance.eventDefaultColor = UIColor.systemGreen
        calendar.appearance.selectionColor = UIColor.systemBlue
        calendar.appearance.todayColor = UIColor.systemOrange
        calendar.appearance.todaySelectionColor = UIColor.black
        
//        Header 변경
        
        calendar.headerHeight = 50
        calendar.appearance.headerMinimumDissolvedAlpha = 0.0
        calendar.appearance.headerDateFormat = "YYYY년 M월"
        calendar.appearance.headerTitleColor = .black
        calendar.appearance.headerTitleFont = UIFont.systemFont(ofSize: 24)
        
        calendar.locale = Locale(identifier: "ko_KR")
        
    }
    
    func setLayout() {
        calendar.snp.makeConstraints {
            $0.top.equalToSuperview().offset(150)
            $0.leading.trailing.equalToSuperview()
            $0.bottom.equalToSuperview().inset(200)
        }
    }
}

extension CalendarViewController: FSCalendarDelegate {
    
}

extension CalendarViewController: FSCalendarDataSource {
    
}

