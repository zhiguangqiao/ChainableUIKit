//
//  UIImageView+chain.swift
//  GoldenCoach
//
//  Created by goodluck on 2023/8/6.
//

import Foundation
import UIKit

extension Chainable where Base: UIImageView {
    @discardableResult
    func image(_ image: UIImage?) -> Self {
        view.image = image
        return self
    }
    @discardableResult
    func imageName(_ imageName: String) -> Self {
        view.image = UIImage(named: imageName)
        return self
    }
}
