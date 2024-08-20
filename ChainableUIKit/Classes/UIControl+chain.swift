//
//  UIControl+chain.swift
//  ChainableUIKit
//
//  Created by qiaozhiguang on 2024/8/20.
//

import UIKit

public extension Chainable where Base: UIControl {
    @discardableResult
    func addTarget(_ target: Any?, action: Selector, for controlEvents: UIControl.Event) -> Self {
        view.addTarget(target, action: action, for: controlEvents)
        return self
    }
}
