//
//  VStack.swift
//  ChainableUIKit
//
//  Created by qiaozhiguang on 2024/8/7.
//

import UIKit

public class VStack: UIStackView {
    public init(@ViewsBuilder content: () -> [UIView]) {
        super.init(frame: .zero)
        self.axis = .vertical
        content().forEach { view in
            self.addArrangedSubview(view)
        }
    }
    
    required init(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
