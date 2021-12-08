//
//  FindStudioViewController.swift
//  Yoginni
//
//  Created by 김믿음 on 2021/12/07.
//

import UIKit
import RxSwift
import RxCocoa

class FindStudioViewController: UIViewController {

    let inputTextField = UITextField()
    let enterBT = UIButton()
    private let inputStringSubject = PublishSubject<String>()
    var inputString: Observable<String> {
      return inputStringSubject.asObservable()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        view.addSubview(inputTextField)
        view.addSubview(enterBT)
        view.backgroundColor = .white
        
        inputTextField.placeholder = "요가이름을 넣어주세요"
        
        inputTextField.snp.makeConstraints { make in
            make.center.equalTo(view.snp.center)
            make.leading.equalTo(view.snp.leading).offset(30)
            make.trailing.equalTo(view.snp.trailing).inset(30)
            make.height.equalTo(30)
        }
        
        enterBT.snp.makeConstraints { make in
            make.leading.equalTo(inputTextField.snp.trailing)
            make.centerY.equalTo(inputTextField.snp.centerY)
            make.width.height.equalTo(25)
        }
        enterBT.backgroundColor = .black
        enterBT.addTarget(self, action: #selector(bTClicked), for: .touchUpInside)
        
//        enterBT.rx.tap
//          .throttle(.seconds(1), scheduler: MainScheduler.asyncInstance)
//          .subscribe(onNext: { [weak self] _ in
//              guard let string = self?.textField.text else { return }
//
//              self?.dismiss(animated: true, completion: {
//                  self?.inputStringSubject.onNext(string)
//                  self?.inputStringSubject.onCompleted()
//              })
//          })
//          .disposed(by: disposeBag)
        
    }
    
    @objc func bTClicked() {
        
    }
    
    
}
