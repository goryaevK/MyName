//
//  LoginViewController.swift
//  MyName
//
//  Created by Konstantin on 05.02.2025.
//

import UIKit

class LoginViewController: UIViewController {
    private enum Constants {
        static let savedTextFieldTextKey = "savedTextFieldText"
    }
    
    let stackView = UIStackView()
    let custlabel = CustomLabel()
    let custTextField = CustTextField()
    let custButton = CustomButton(frame: CGRect(), title: "")
    let custlabel2 = CustomLabel()
    let screenWidth = UIScreen.main.bounds.width-10
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupUI()
        custlabel.setupLabel(title: "Войдите с паролем", size: 32, alignment: .center )
        custTextField.setupTextField(size: 20, aligment: .left, color: .black)
        if let savedText = UserDefaults.standard.string(forKey: Constants.savedTextFieldTextKey) {
            custTextField.text = savedText
            print("Извлеченный текст: \(savedText)")
        } else {
            custTextField.text = "Нет сохраненного текста"
        }
        let model = CustButtonModel(title: "Войти") {self.buttonPressed()}
        custButton.setupButton(custButtonModel: model)
        custlabel2.setupLabel(title: "Забыли пароль?", size: 14, alignment: .right )
    }
    
    func setupUI() {
        //настройка UIStackView
        stackView.axis = .vertical
        stackView.alignment = .center
        stackView.distribution = .fillProportionally
        stackView.spacing = 30
        
        //Настройка параметров метки
        //setupButton()
      
        stackView.addArrangedSubview(custlabel)
        stackView.addArrangedSubview(custTextField)
        stackView.addArrangedSubview(custButton)
        stackView.addArrangedSubview(custlabel2)
        view.addSubview(stackView)
        stackView.translatesAutoresizingMaskIntoConstraints = false
        
        // Устанавливаем ограничения
        NSLayoutConstraint.activate([
            stackView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 10),
            stackView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -10),
            stackView.topAnchor.constraint(equalTo: view.topAnchor, constant: 100),
            stackView.widthAnchor.constraint(equalToConstant: screenWidth),
            custlabel.widthAnchor.constraint(equalToConstant: screenWidth),
            custTextField.widthAnchor.constraint(equalToConstant: screenWidth),
            custButton.widthAnchor.constraint(equalToConstant: screenWidth),
            custlabel2.widthAnchor.constraint(equalToConstant: screenWidth)
        ])
        
    }

    
    func buttonPressed() {
        
    }

        
        
}
    
    
    
    
    

