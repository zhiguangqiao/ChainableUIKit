//
//  UIStackView+chain.swift
//  GoldenCoach
//
//  Created by goodluck on 2023/7/22.
//

import Foundation
import UIKit

extension Chainable where Base: UIStackView {
    @discardableResult
    func axis(_ axis: NSLayoutConstraint.Axis) -> Self {
        view.axis = axis
        return self
    }
    @discardableResult
    func alignment(_ alignment: UIStackView.Alignment) -> Self {
        view.alignment = alignment
        return self
    }
    @discardableResult
    func spacing(_ spacing: CGFloat) -> Self {
        view.spacing = spacing
        return self
    }
    @discardableResult
    func distribution(_ distribution: UIStackView.Distribution) -> Self {
        view.distribution = distribution
        return self
    }
    @discardableResult
    func arrangedViews(_ views: [UIView]) -> Self {
        view.arrangedSubviews.forEach { v in
            view.removeArrangedSubview(v)
        }
        views.forEach { v in
            view.addArrangedSubview(v)
        }
        return self
    }
}
