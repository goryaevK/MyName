//
//  ViewController.swift
//  MyName
//
//  Created by Konstantin on 28.01.2025.
//

import UIKit

class ViewController: UIViewController {
    override func viewDidLoad() {

        super.viewDidLoad()
        
        // Создание кнопки
        let button = UIButton(type: .system)
        button.setTitle("Нажми меня", for: .normal)
        button.frame = CGRect(x: 100, y: 100, width: 200, height: 50)
        button.backgroundColor = .green
        // Добавление цели для кнопки
        button.addTarget(self, action: #selector(buttonPressed), for: .touchUpInside)
        
        // Добавление кнопки на экран
        self.view.addSubview(button)
    }
        
    @objc func buttonPressed() {
        print("Кнопка была нажата!")
    }

 

}

