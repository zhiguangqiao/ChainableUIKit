//
//  UIButton+chain.swift
//  GoldenCoach
//
//  Created by goodluck on 2023/7/26.
//

import Foundation
import UIKit

extension Chainable where Base: UIButton {
    @discardableResult
    func image(_ image: UIImage?, state: UIControl.State) -> Self {
        view.setImage(image, for: state)
        return self
    }
    @discardableResult
    func setTitle(_ title: String, state: UIControl.State) -> Self {
        view.setTitle(title, for: state)
        return self
    }
    @discardableResult
    func titleFont(_ titleFont: UIFont) -> Self {
        view.titleLabel?.font = titleFont
        return self
    }
    @discardableResult
    func setTitleColor(_ color: UIColor, state: UIControl.State) -> Self {
        view.setTitleColor(color, for: state)
        return self
    }
}
