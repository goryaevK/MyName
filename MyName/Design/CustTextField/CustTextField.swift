//
//  CustTextField.swift
//  MyName
//
//  Created by Konstantin on 09.02.2025.
//
import UIKit

class CustTextField: UITextField {
    
    func setupTextField(model: CustTextFieldModel) {
        font = UIFont.systemFont(ofSize: CGFloat(model.size))
        textAlignment = model.alignment
        layer.borderColor = model.color.cgColor
        setup()
    }
    func setupTextField(size: Int, alignment: NSTextAlignment, color: UIColor) {
        font = UIFont.systemFont(ofSize: CGFloat(size))
        textAlignment = alignment
        layer.borderColor = color.cgColor
        setup()
    }
    func colorBorder(color: UIColor){
        layer.borderColor = color.cgColor
    }
        
    private func setup() {
        textColor = .black
        borderStyle = .roundedRect
        clearButtonMode = .whileEditing
        keyboardType = .default
        layer.borderWidth = 0.8
        layer.cornerRadius = 5
        isSecureTextEntry = false
    }
}
