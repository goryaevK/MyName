//
//  Validator.swift
//  MyName
//
//  Created by Konstantin on 11.02.2025.
//
import UIKit

protocol Validator {
    func check(text: String) -> Bool
}

class PasswordValidator: Validator {
    func check(text: String) -> Bool {
        let trimmedText = text.trimmingCharacters(in: .whitespacesAndNewlines)
        let characterCount = trimmedText.count
        print("Количество символов: \(characterCount)")
        let regex = ".*[а-яА-Я]+.*"
        let predicate = NSPredicate(format: "SELF MATCHES %@", regex)
        return (characterCount <= 8) || (predicate.evaluate(with: trimmedText))
//        return true
    }
}

class PhoneValidator: Validator {
    func check(text: String) -> Bool {
        //
        return true
    }
}

