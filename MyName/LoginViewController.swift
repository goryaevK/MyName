//
//  LoginViewController.swift
//  MyName
//
//  Created by Konstantin on 05.02.2025.
//

import UIKit

class LoginViewController: UIViewController {
    
    let stackView = UIStackView()
    let label = UILabel()
    let uitextfield = UITextField()
    let button = UIButton(type: .system)
    let label2 = UILabel()
    let screenWidth = UIScreen.main.bounds.width-10
    
    init (model: UserPhoneModel) {
        super.init(nibName: nil, bundle: nil)
        uitextfield.text = model.phone
    }
        
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupUI()
        if let savedText = UserDefaults.standard.string(forKey: "savedTextFieldText") {
                label.text = savedText
                print("Извлеченный текст: \(savedText)")
            } else {
                label.text = "Нет сохраненного текста"
            }
    }
    
    func setupUI() {
        //настройка UIStackView
        stackView.axis = .vertical
        stackView.alignment = .center
        stackView.distribution = .fillProportionally
        stackView.spacing = 30
        
        //Настройка параметров метки
        setupLabel()
        setupTextField()
        setupButton()
        setupLabel2()
      
        stackView.addArrangedSubview(label)
        
        stackView.addArrangedSubview(uitextfield)
        stackView.addArrangedSubview(button)
        stackView.addArrangedSubview(label2)
        view.addSubview(stackView)
        stackView.translatesAutoresizingMaskIntoConstraints = false
        
        // Устанавливаем ограничения
        NSLayoutConstraint.activate([
            stackView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 10),
            stackView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -10),
            stackView.topAnchor.constraint(equalTo: view.topAnchor, constant: 100),
            stackView.widthAnchor.constraint(equalToConstant: screenWidth),
            button.widthAnchor.constraint(equalToConstant: screenWidth),
            uitextfield.widthAnchor.constraint(equalToConstant: screenWidth),
            label.widthAnchor.constraint(equalToConstant: screenWidth),
            label2.widthAnchor.constraint(equalToConstant: screenWidth)
        
        
        ])
        
        
    }
    func setupLabel() {
        label.text = "Войдите с паролем"
        label.textColor = .black
        label.font = UIFont.systemFont(ofSize: 32)
        label.textAlignment = .center
        label.numberOfLines = 0
        label.lineBreakMode = .byWordWrapping
        label.adjustsFontSizeToFitWidth = true
        label.minimumScaleFactor = 0.1
        label.frame = CGRect(x: 20, y: 100, width: 50, height: 100)
    }

    func setupTextField() {
        //uitextfield.text = "Введите пароль "
        //uitextfield.placeholder = "    "
        uitextfield.font = UIFont.systemFont(ofSize: 14)
        uitextfield.textColor = .black
        uitextfield.textAlignment = .center
        uitextfield.borderStyle = .roundedRect
        uitextfield.clearButtonMode = .whileEditing
        uitextfield.keyboardType = .default
        uitextfield.layer.borderWidth = 0.8
        uitextfield.layer.borderColor = UIColor.black.cgColor
        uitextfield.layer.cornerRadius = 5
        uitextfield.isSecureTextEntry = false
        
    }
    
    func setupButton() {
        button.setTitle("Войти", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.backgroundColor = .red
        button.layer.cornerRadius = 5
        button.titleLabel?.font = UIFont.systemFont(ofSize: 16, weight: .bold)
        button.addTarget(self, action: #selector(buttonPressed), for: .touchUpInside)
    }
    
    func setupLabel2() {
        label2.text = "Забыли пароль?"
        label2.textColor = .black
        label2.font = UIFont.systemFont(ofSize: 16)
        label2.textAlignment = .right
        label2.numberOfLines = 2
        label2.lineBreakMode = .byWordWrapping
        label2.adjustsFontSizeToFitWidth = true
        label2.minimumScaleFactor = 1
    }
    
    
    @objc func buttonPressed() {
        print("Кнопка была нажата!")
    }

        
        
}
    
    
    
    
    

