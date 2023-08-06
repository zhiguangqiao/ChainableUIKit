//
//  UILabel+chain.swift
//  GoldenCoach
//
//  Created by goodluck on 2023/7/22.
//

import Foundation
import UIKit

public extension Chainable where Base: UILabel {
    @discardableResult
    func text(_ text: String) -> Self {
        view.text = text
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
    func shadowColor(_ shadowColor: UIColor?) -> Self {
        view.shadowColor = shadowColor
        return self
    }
    @discardableResult
    func shadowOffset(_ shadowOffset: CGSize) -> Self {
        view.shadowOffset = shadowOffset
        return self
    }
    @discardableResult
    func textAlignment(_ textAlignment: NSTextAlignment) -> Self {
        view.textAlignment = textAlignment
        return self
    }
    @discardableResult
    func lineBreakMode(_ lineBreakMode: NSLineBreakMode) -> Self {
        view.lineBreakMode = lineBreakMode
        return self
    }
    @discardableResult
    func attributedText(_ attributedText: NSAttributedString?) -> Self {
        view.attributedText = attributedText
        return self
    }
    @discardableResult
    func highlightedTextColor(_ highlightedTextColor: UIColor?) -> Self {
        view.highlightedTextColor = highlightedTextColor
        return self
    }
    @discardableResult
    func numberOfLines(_ numberOfLines: Int) -> Self {
        view.numberOfLines = numberOfLines
        return self
    }
    @discardableResult
    func adjustsFontSizeToFitWidth(_ adjustsFontSizeToFitWidth: Bool) -> Self {
        view.adjustsFontSizeToFitWidth = adjustsFontSizeToFitWidth
        return self
    }
    @discardableResult
    func baselineAdjustment(_ baselineAdjustment: UIBaselineAdjustment) -> Self {
        view.baselineAdjustment = baselineAdjustment
        return self
    }
}
