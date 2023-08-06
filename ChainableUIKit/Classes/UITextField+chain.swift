//
//  UITextField+chain.swift
//  GoldenCoach
//
//  Created by goodluck on 2023/7/29.
//

import Foundation
import UIKit

extension Chainable where Base: UITextField {
    @discardableResult
    func text(_ text: String) -> Self {
        view.text = text
        return self
    }
    @discardableResult
    func keyboardType(_ keyboardType: UIKeyboardType) -> Self {
        view.keyboardType = keyboardType
        return self
    }
    @discardableResult
    func font(_ font: UIFont) -> Self {
        view.font = font
        return self
    }
    @discardableResult
    func textColor(_ textColor: UIColor) -> Self {
        view.textColor = textColor
        return self
    }
    @discardableResult
    func textAlignment(_ textAlignment: NSTextAlignment) -> Self {
        view.textAlignment = textAlignment
        return self
    }
    @discardableResult
    func attributedText(_ attributedText: NSAttributedString?) -> Self {
        view.attributedText = attributedText
        return self
    }
    @discardableResult
    func adjustsFontSizeToFitWidth(_ adjustsFontSizeToFitWidth: Bool) -> Self {
        view.adjustsFontSizeToFitWidth = adjustsFontSizeToFitWidth
        return self
    }
    @discardableResult
    func placeholder(_ placeholder: String) -> Self {
        view.placeholder = placeholder
        return self
    }
    @discardableResult
    func attributedPlaceholder(_ attributedPlaceholder: NSAttributedString) -> Self {
        view.attributedPlaceholder = attributedPlaceholder
        return self
    }
}
