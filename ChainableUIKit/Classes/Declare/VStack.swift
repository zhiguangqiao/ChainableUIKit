//
//  VStack.swift
//  ChainableUIKit
//
//  Created by qiaozhiguang on 2024/8/7.
//

import UIKit

public class VStack: UIStackView {
    public convenience init(@ViewsBuilder content: (() -> [UIView])) {
        self.init(frame: .zero)
        content().forEach { view in
            self.addArrangedSubview(view)
        }
    }
    public override init(frame: CGRect) {
        super.init(frame: frame)
        self.axis = .vertical
    }
    required init(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
