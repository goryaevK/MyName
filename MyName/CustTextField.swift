//
//  CustTextField.swift
//  MyName
//
//  Created by Konstantin on 09.02.2025.
//
import UIKit

class CustTextField: UITextField {
    func setupTextField(size: Int, aligment: NSTextAlignment) {
        font = UIFont.systemFont(ofSize: CGFloat(size))
        textAlignment = aligment
        setup()
    }
    
    private func setup() {
        text = " "
        placeholder = "+7(999)999-99-99"
        //font = UIFont.systemFont(ofSize: 14)
        textColor = .black
        //textAlignment = .center
        borderStyle = .roundedRect
        clearButtonMode = .whileEditing
        keyboardType = .default
        layer.borderWidth = 0.8
        layer.borderColor = UIColor.black.cgColor
        layer.cornerRadius = 5
        isSecureTextEntry = false
        
    }
}
