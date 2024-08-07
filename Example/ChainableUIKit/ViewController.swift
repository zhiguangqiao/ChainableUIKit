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
        .cornerRadius(10)
        .text("xxxsadfasdfax")
//        .fixSize(.init(width: 30, height: 20))
        .view
    override func viewDidLoad() {
        super.viewDidLoad()
//        view.addSubview(label)
        let a = false
        VStack {
            UILabel().chain.backgroundColor(.black).textColor(.white).text("22asdfaskdfasdfasd").view
            label.chain.textColor(.white).view
            if a {
                UILabel().chain.backgroundColor(.black).textColor(.white).text("aaaa").view
            } else {
                UILabel().chain.backgroundColor(.black).textColor(.white).text("bbbb").view
            }
            HStack {
                if a {
                    UILabel().chain.backgroundColor(.black).textColor(.white).text("aaaa").view
                } else {
                    UILabel().chain.backgroundColor(.black).textColor(.white).text("bbbb").view
                }
                for s in ["a", "b"] {
                    UILabel().chain.text(s).view
                }
                UIImageView(image: UIImage(named: "OIP-C")).chain.fixSize(.init(width: 100, height: 250)).view
            }.chain.backgroundColor(.red).view
        }.chain.alignment(.center).backgroundColor(.black).addToSuperView(.init(top: 10, left: 10, bottom: 10, right: 10)).backgroundColor(.green).addTo(superView: view) { make in
            make.center.equalToSuperview()
        }
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

