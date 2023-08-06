//
//  UIView+chain.swift
//  GoldenCoach
//
//  Created by goodluck on 2023/7/22.
//

import UIKit
import SnapKit

extension Chainable where Base: UIView {
    @discardableResult
    func backgroundColor(_ color: UIColor) -> Self {
        view.backgroundColor = color
        return self
    }
    @discardableResult
    func cornerRadius(_ cornerRadius: CGFloat) -> Self {
        view.layer.cornerRadius = cornerRadius
        return self
    }
    @discardableResult
    func borderColor(_ borderColor: UIColor) -> Self {
        view.layer.borderColor = borderColor.cgColor
        return self
    }
    @discardableResult
    func borderWidth(_ borderWidth: CGFloat) -> Self {
        view.layer.borderWidth = borderWidth
        return self
    }
    @discardableResult
    func clipsToBounds() -> Self {
        view.clipsToBounds = true
        return self
    }
    @discardableResult
    func fixSize(_ size: CGSize) -> Self {
        view.snp.makeConstraints { make in
            make.size.equalTo(size)
        }
        return self
    }
    @discardableResult
    func addToSuperView(_ inset: UIEdgeInsets) -> Chainable<UIView> {
        let view = UIView()
        view.addSubview(self.view)
        self.view.snp.makeConstraints { make in
            make.edges.equalTo(inset)
        }
        return view.chain
    }
    @discardableResult
    func isUserInteractionEnabled(_ isUserInteractionEnabled: Bool) -> Self {
        view.isUserInteractionEnabled = isUserInteractionEnabled
        return self
    }
    @discardableResult
    func tag(_ tag: Int) -> Self {
        view.tag = tag
        return self
    }
}
