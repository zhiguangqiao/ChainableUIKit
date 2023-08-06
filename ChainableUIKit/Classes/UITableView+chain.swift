//
//  UITableView+chain.swift
//  GoldenCoach
//
//  Created by goodluck on 2023/7/23.
//

import Foundation
import UIKit

public extension Chainable where Base: UITableView {
    @discardableResult
    func separatorStyle(_ separatorStyle: UITableViewCell.SeparatorStyle) -> Self {
        view.separatorStyle = separatorStyle
        return self
    }
    @discardableResult
    func rowHeight(_ rowHeight: CGFloat) -> Self {
        view.rowHeight = rowHeight
        return self
    }
}
