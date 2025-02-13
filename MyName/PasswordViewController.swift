//
//  NewController.swift
//  MyName
//
//  Created by Konstantin on 08.02.2025.
//
import UIKit

class PasswordViewController: UIViewController {
    let stackView = UIStackView()
    let custLabel1 = CustomLabel()
    let custLabel2 = CustomLabel()
    let custLabel3 = CustomLabel()
    let custTextFieldPassword = CustTextField()
    let custTextFieldPasswordRepeat = CustTextField()
    let custButtonReg = CustomButton(frame: CGRect(), title: "")
    let screenWidth = UIScreen.main.bounds.width-10
    let feedbackLabel = CustomLabel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        setupUI()
        let model = CustLabelModel(title: "Создание пароля", size: 30, alignment: .center)
        custLabel1.setupLabel(model: model)
        let model1 = CustLabelModel(title: "Пароль", size: 15, alignment: .left)
        custLabel2.setupLabel(model: model1)
        custTextFieldPassword.setupTextField(size: 20, alignment: .center, color: .black)
        let model2 = CustLabelModel(title: "Повторите пароль", size: 15, alignment: .left)
        custLabel3.setupLabel(model: model2)
        custTextFieldPasswordRepeat.setupTextField(size: 20, alignment: .center, color: .black)
        let modelButton = CustButtonModel(title: "Зарегистрироваться") {self.checkPassword()}
        custButtonReg.setupButton(custButtonModel: modelButton)
    }
    
    
    func setupUI(){
        stackView.axis = .vertical
        stackView.alignment = .center
        stackView.distribution = .fillProportionally
        stackView.spacing = 30
        
        stackView.addArrangedSubview(custLabel1)
        stackView.addArrangedSubview(custLabel2)
        stackView.addArrangedSubview(custTextFieldPassword)
        stackView.addArrangedSubview(custLabel3)
        stackView.addArrangedSubview(custTextFieldPasswordRepeat)
        stackView.addArrangedSubview(custButtonReg)
        
        view.addSubview(stackView)
        stackView.translatesAutoresizingMaskIntoConstraints = false
        // Устанавливаем ограничения
        NSLayoutConstraint.activate([
            stackView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 10),
            stackView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -10),
            stackView.topAnchor.constraint(equalTo: view.topAnchor, constant: 100),
            stackView.widthAnchor.constraint(equalToConstant: screenWidth),
            custLabel1.widthAnchor.constraint(equalToConstant: screenWidth),
            custLabel2.widthAnchor.constraint(equalToConstant: screenWidth),
            custLabel3.widthAnchor.constraint(equalToConstant: screenWidth),
            custTextFieldPassword.widthAnchor.constraint(equalToConstant: screenWidth),
            custTextFieldPasswordRepeat.widthAnchor.constraint(equalToConstant: screenWidth),
            custButtonReg.widthAnchor.constraint(equalToConstant: screenWidth)
        ])
    }
    
    func checkPassword() {
        guard let password = custTextFieldPassword.text else { return }
        let passwordValidator = PasswordValidator()
        if  passwordValidator.check(text: password) {
            print("Error password")
            custTextFieldPassword.colorBorder(color: .red)
        } else {
            print("Password Ok")
            custTextFieldPassword.colorBorder(color: .black)
        }

    }
    
}
