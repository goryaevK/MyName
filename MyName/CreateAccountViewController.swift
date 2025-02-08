//
//  CreateAccountViewController.swift
//  MyName
//
//  Created by Konstantin on 28.01.2025.
//

import UIKit

class CreateAccountViewController: UIViewController {
    let stackView = UIStackView()
    let label = UILabel()
    let segment = UISegmentedControl(items: ["Телефон","Почта"])
    let uitextfield = UITextField()
    let button = UIButton(type: .system)
    let label2 = UILabel()
    let screenWidth = UIScreen.main.bounds.width-10
    
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        view.backgroundColor = .white
        
        setupUI()
        

    }
   
        
        
    func setupUI() {
        //настройка UIStackView
        stackView.axis = .vertical
        stackView.alignment = .center
        stackView.distribution = .fillProportionally
        stackView.spacing = 30
        
        //Настройка параметров метки
        setupLabel()
        setupSegment()
        setupTextField()
        setupButton()
        setupLabel2()
      
        stackView.addArrangedSubview(label)
        stackView.addArrangedSubview(segment)
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
            segment.widthAnchor.constraint(equalToConstant: screenWidth),
            label.widthAnchor.constraint(equalToConstant: screenWidth),
            label2.widthAnchor.constraint(equalToConstant: screenWidth)
        
        
        ])
        
        
    }
    func setupLabel() {
        label.text = "Войти или создать аккаунт"
        label.textColor = .black
        label.font = UIFont.systemFont(ofSize: 32)
        label.textAlignment = .center
        label.numberOfLines = 0
        label.lineBreakMode = .byWordWrapping
        label.adjustsFontSizeToFitWidth = true
        label.minimumScaleFactor = 0.1
        label.frame = CGRect(x: 20, y: 100, width: 50, height: 100)
    }
    func setupSegment() {
        segment.selectedSegmentIndex = 0
        segment.tintColor = .blue
        segment.backgroundColor = .lightGray
        segment.apportionsSegmentWidthsByContent = true
    }
    func setupTextField() {
        uitextfield.text = " "
        uitextfield.placeholder = "+7(999)999-99-99"
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
        button.setTitle("Получить код", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.backgroundColor = .red
        button.layer.cornerRadius = 5
        button.titleLabel?.font = UIFont.systemFont(ofSize: 16, weight: .bold)
        button.addTarget(self, action: #selector(buttonPressed), for: .touchUpInside)
    }
    
    func setupLabel2() {
        label2.text = "Нажимая кнопку \"Получить код\", Вы соглашаетесь с условиями политики конфиденциальности"
        label2.textColor = .black
        label2.font = UIFont.systemFont(ofSize: 11)
        label2.textAlignment = .left
        label2.numberOfLines = 2
        label2.lineBreakMode = .byWordWrapping
        label2.adjustsFontSizeToFitWidth = true
        label2.minimumScaleFactor = 1
    }
    
    
    @objc func buttonPressed() {
        let viewcontroller = LoginViewController(model: UserPhoneModel(phone: uitextfield.text ?? ""))
        viewcontroller.view.backgroundColor = .white
        self.navigationController?.pushViewController(viewcontroller, animated: true)
        print("Кнопка была нажата!")
        let text = uitextfield.text ?? ""
        UserDefaults.standard.set(text, forKey: "savedTextFieldText")
    }

 

}

