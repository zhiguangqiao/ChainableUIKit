# ChainableUIKit

[![CI Status](https://img.shields.io/travis/qiaozhiguang/ChainableUIKit.svg?style=flat)](https://travis-ci.org/qiaozhiguang/ChainableUIKit)
[![Version](https://img.shields.io/cocoapods/v/ChainableUIKit.svg?style=flat)](https://cocoapods.org/pods/ChainableUIKit)
[![License](https://img.shields.io/cocoapods/l/ChainableUIKit.svg?style=flat)](https://cocoapods.org/pods/ChainableUIKit)
[![Platform](https://img.shields.io/cocoapods/p/ChainableUIKit.svg?style=flat)](https://cocoapods.org/pods/ChainableUIKit)

## Example

To run the example project, clone the repo, and run `pod install` from the Example directory first.

## Requirements

## Installation

ChainableUIKit is available through [CocoaPods](https://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod 'ChainableUIKit'

    private let label = UILabel()
        .chain
        .fixSize(CGSizeMake(110, 32))
        .backgroundColor(.init(hex: "#161F5B"))
        .cornerRadius(4)
        .textAlignment(.center)
        .font(.systemFont(ofSize: 14))
        .textColor(.white).borderColor(.white)
        .borderWidth(0.5)
        .view
        
      private lazy var buttonStackView = UIStackView()
        .chain
        .axis(.horizontal)
        .distribution(.equalSpacing)
        .backgroundColor( .init(hex: "#FFE3A6"))
        .arrangedViews([
            subButton,
            UIView()
                .chain
                .backgroundColor(.init(hex: "#141B26"))
                .fixSize(CGSize(width: 1, height: 50))
                .view,
            addButton
        ])
        .view
```

## Author

qiaozhiguang, 860638830@qq.com

## License

ChainableUIKit is available under the MIT license. See the LICENSE file for more info.
