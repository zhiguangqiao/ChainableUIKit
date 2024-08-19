//
//  UIView+chain.swift
//  GoldenCoach
//
//  Created by goodluck on 2023/7/22.
//

import UIKit
import SnapKit

public extension Chainable where Base: UIView {
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
    func fix(width: CGFloat? = nil, height: CGFloat? = nil) -> Self {
        view.snp.makeConstraints { make in
            if let width {
                make.width.equalTo(width)
            }
            if let height {
                make.height.equalTo(height)
            }
        }
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
    func fixAspectRatio(_ ratio: CGFloat) -> Self {
        view.snp.makeConstraints { make in
            make.height.equalTo(view.snp.width).multipliedBy(ratio)
        }
        return self
    }
    @discardableResult
    func hugging(_ priority: UILayoutPriority, for axis: NSLayoutConstraint.Axis) -> Self {
        view.setContentHuggingPriority(priority, for: axis)
        return self
    }
    @discardableResult
    func compressionResistance(_ priority: UILayoutPriority, for axis: NSLayoutConstraint.Axis) -> Self {
        view.setContentCompressionResistancePriority(priority, for: axis)
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
    func invoke(_ block : (UIView) -> Void) -> Self {
        block(view)
        return view.chain
    }
    @discardableResult
    func addToSuperView(_ closure: (_ make: ConstraintMaker, _ view: UIView) -> Void) -> Chainable<UIView> {
        let view = UIView()
        view.addSubview(self.view)
        let block = { (make: ConstraintMaker) in
            closure(make, self.view)
        }
        self.view.snp.makeConstraints(block)
        return view.chain
    }
    @discardableResult
    func addTo(superView: UIView, closure: (_ make: ConstraintMaker) -> Void) -> Self {
        superView.addSubview(self.view)
        self.view.snp.makeConstraints(closure)
        return view.chain
    }
    @discardableResult
    func addTo(superView: UIView, closure: (_ make: ConstraintMaker, _ view: UIView) -> Void) -> Self {
        superView.addSubview(self.view)
        let block = { (make: ConstraintMaker) in
            closure(make, self.view)
        }
        self.view.snp.makeConstraints(block)
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
