//
//  CreateAccountViewController.swift
//  MyName
//
//  Created by Konstantin on 28.01.2025.
//

import UIKit

class CreateAccountViewController: UIViewController {
    private enum Constants {
        static let savedTextFieldTextKey = "savedTextFieldText"
    }
    
    let stackView = UIStackView()
    let custlabel = CustomLabel()
    let segment = UISegmentedControl(items: ["Телефон","Почта"])
    let custTextField = CustTextField()
    let custButton = CustomButton(frame: CGRect(), title: "")
    let custlabel2 = CustomLabel()
    let screenWidth = UIScreen.main.bounds.width-10
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        
        setupUI()
        custlabel.setupLabel(title: "Войти или создать аккаунт", size: 32, alignment: .center )
        let model = CustButtonModel(title: "Получить код") {self.buttonPressed()}
        custButton.setupButton(custButtonModel: model)
        custTextField.setupTextField(size: 20, aligment: .center)
        custlabel2.setupLabel(title: "Нажимая кнопку \"Получить код\", Вы соглашаетесь с условиями политики конфиденциальности", size: 12, alignment: .left)
    }

    func setupUI() {
        //настройка UIStackView
        stackView.axis = .vertical
        stackView.alignment = .center
        stackView.distribution = .fillProportionally
        stackView.spacing = 30
        
        //Настройка параметров метки
        
        setupSegment()
    
        
      
        stackView.addArrangedSubview(custlabel)
        stackView.addArrangedSubview(segment)
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
            segment.widthAnchor.constraint(equalToConstant: screenWidth),
            custTextField.widthAnchor.constraint(equalToConstant: screenWidth),
            custButton.widthAnchor.constraint(equalToConstant: screenWidth),
            custlabel2.widthAnchor.constraint(equalToConstant: screenWidth)
        ])
        
        
    }
    
    func setupSegment() {
        segment.selectedSegmentIndex = 0
        segment.tintColor = .blue
        segment.backgroundColor = .lightGray
        segment.apportionsSegmentWidthsByContent = true
    }
    
    
    func buttonPressed() {
        let text = custTextField.text ?? ""
        UserDefaults.standard.set(text, forKey: Constants.savedTextFieldTextKey)
        let viewcontroller = LoginViewController()
        viewcontroller.view.backgroundColor = .white
        self.navigationController?.pushViewController(viewcontroller, animated: true)
    }
}

