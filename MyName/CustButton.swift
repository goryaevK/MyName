//
//  CustButton.swift
//  MyName
//
//  Created by Konstantin on 08.02.2025.
//
import UIKit

struct CustButtonModel {
    var title: String
    var action: () -> Void
}

class CustomButton: UIButton {
    private var custButtonModel: CustButtonModel?
    // Кастомный инициализатор
    init(frame: CGRect, title: String) {
        super.init(frame: frame)
        addTarget(self, action: #selector(buttonPressed), for: .touchUpInside)
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        addTarget(self, action: #selector(buttonPressed), for: .touchUpInside)
    }
    
    // Настройка кнопки
    
    
    func setupButton(custButtonModel: CustButtonModel) {
        self.custButtonModel = custButtonModel
        
        backgroundColor = .red
        setTitleColor(.white, for: .normal)
        layer.cornerRadius = 5
        layer.borderColor = UIColor.white.cgColor
        setTitle(custButtonModel.title, for: .normal)
        titleLabel?.font = UIFont.systemFont(ofSize: 16, weight: .bold)
    }
    @objc private func buttonPressed() {
        print("Кнопка нажата!")
        custButtonModel?.action()
    }
}
