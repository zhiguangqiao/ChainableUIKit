//
//  ViewController.swift
//  ChainableUIKit
//
//  Created by qiaozhiguang on 08/06/2023.
//  Copyright (c) 2023 qiaozhiguang. All rights reserved.
//

import UIKit
import ChainableUIKit
class ViewController: UIViewController {
    let label = UILabel().chain
        .backgroundColor(.red)
        .text("RED RED")
        .view
    override func viewDidLoad() {
        super.viewDidLoad()
        let a = false
        VStack {
            UILabel().chain.backgroundColor(.black).textColor(.white).text("BLACK BLACK BLACK BLACK").view
            label.chain.textColor(.white).view
            if a {
                UILabel().chain.backgroundColor(.black).textColor(.white).text("if a").view
            } else {
                UILabel().chain.backgroundColor(.black).textColor(.white).text("else b").view
            }
            HStack {
                if a {
                    UILabel().chain.backgroundColor(.black).textColor(.white).text("if a").view
                } else {
                    UILabel().chain.backgroundColor(.black).textColor(.white).text("else b").view
                }
                for s in ["for in [a, b]", "for in [a, b]"] {
                    UILabel().chain.text(s).view
                }
                UIImageView(image: UIImage(named: "OIP-C")).chain.fixSize(.init(width: 100, height: 250)).view
            }.chain.backgroundColor(.red).view
        }.chain.alignment(.center).backgroundColor(.black).addToSuperView(.init(top: 10, left: 10, bottom: 10, right: 10)).backgroundColor(.green)
            .addTo(superView: view) { make, view in
                make.leading.trailing.top.equalToSuperview()
                make.height.equalTo(view.snp.width).multipliedBy(1)
            }
    }
}

