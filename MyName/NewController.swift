//
//  NewController.swift
//  MyName
//
//  Created by Konstantin on 08.02.2025.
//
import UIKit

class NewController: UIViewController {
    let stackView = UIStackView()
    let custLabel1 = CustomLabel()
    let custLabel2 = CustomLabel()
    let custLabel3 = CustomLabel()
    let custLabel4 = CustomLabel()
    let custLabel5 = CustomLabel()
    let custLabel6 = CustomLabel()
    let screenWidth = UIScreen.main.bounds.width-10
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        setupUI()
        
        let model = CustModelLabel(title: "String")
        custLabel1.setupLabel(model: model)
        let model1 = CustModelLabel(title: "Start")
        custLabel2.setupLabel(model: model1)
        custLabel3.setupLabel(title: "Stop", size: 30, alignment: .center)
        custLabel4.setupLabel(title: "Метка 4", size: 5, alignment: .left)
        custLabel5.setupLabel(title: "Метка 5", size: 80, alignment: .center)
        custLabel6.setupLabel(title: "Метка 6", size: 10, alignment: .right)
    }
    func setupUI(){
        stackView.axis = .vertical
        stackView.alignment = .center
        stackView.distribution = .fillProportionally
        stackView.spacing = 30
        
        
        stackView.addArrangedSubview(custLabel1)
        stackView.addArrangedSubview(custLabel2)
        stackView.addArrangedSubview(custLabel3)
        stackView.addArrangedSubview(custLabel4)
        stackView.addArrangedSubview(custLabel5)
        stackView.addArrangedSubview(custLabel6)
        
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
            custLabel4.widthAnchor.constraint(equalToConstant: screenWidth),
            custLabel5.widthAnchor.constraint(equalToConstant: screenWidth),
            custLabel6.widthAnchor.constraint(equalToConstant: screenWidth)
        ])
        
        
        
        }
        
        
        
        
        
    }
