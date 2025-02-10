//
//  CustomButton.swift
//  MyName
//
//  Created by Konstantin on 08.02.2025.
//
import UIKit
class CustomButton: UIButton {
        
    // Кастомный инициализатор
    init(frame: CGRect, title: String) {
        super.init(frame: frame)
        setupButton(title: title)
        addTarget(self, action: #selector(buttonPressed), for: .touchUpInside)
    }
        
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        setupButton(title: "")
        addTarget(self, action: #selector(buttonPressed), for: .touchUpInside)
    }
        
    // Настройка кнопки
    
    func setupButton(title: String) {
        backgroundColor = .red
        setTitleColor(.white, for: .normal)
        layer.cornerRadius = 5
        layer.borderColor = UIColor.white.cgColor
        setTitle(title, for: .normal)
        titleLabel?.font = UIFont.systemFont(ofSize: 16, weight: .bold)
    }
}
@objc private func buttonPressed() {
        print("Кнопка нажата!")
    }
