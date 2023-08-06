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
        .fixSize(.init(width: 30, height: 20))
        .view
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(label)
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

