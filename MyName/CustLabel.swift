//
//  CustLabel.swift
//  MyName
//
//  Created by Konstantin on 08.02.2025.
//
import UIKit

struct CustModelLabel {
    var title: String
}

class CustomLabel: UILabel{
    
    func setupLabel(model: CustModelLabel) {
        text = model.title
        setup()
    }
    
    func setupLabel(title: String, size: Int, alignment: NSTextAlignment){
        text = title
        font = UIFont.systemFont(ofSize: CGFloat(size))
        textAlignment = alignment
        setup()
    }
      
    private func setup(){
        textColor = .black
        numberOfLines = 0
        lineBreakMode = .byWordWrapping
        adjustsFontSizeToFitWidth = true
        minimumScaleFactor = 0.1
        frame = CGRect(x: 20, y: 100, width: 50, height: 100)
    }
}
