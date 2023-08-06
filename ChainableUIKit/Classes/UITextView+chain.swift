//
//  UITextView+chain.swift
//  GoldenCoach
//
//  Created by goodluck on 2023/8/5.
//

import Foundation
import UIKit

extension Chainable where Base: UITextView {
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
    func isEditable(_ isEditable: Bool) -> Self {
        view.isEditable = isEditable
        return self
    }
    @discardableResult
    func isSelectable(_ isSelectable: Bool) -> Self {
        view.isSelectable = isSelectable
        return self
    }
    @discardableResult
    func textContainerInset(_ textContainerInset: UIEdgeInsets) -> Self {
        view.textContainerInset = textContainerInset
        return self
    }
}
