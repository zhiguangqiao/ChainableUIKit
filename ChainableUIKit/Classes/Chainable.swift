//
//  Chainable.swift
//  GoldenCoach
//
//  Created by goodluck on 2023/7/22.
//
import Foundation
import UIKit

public struct Chainable<Base> {
    public let view: Base
    public init(_ base: Base) {
        self.view = base
    }
}

public protocol ChainableCompatible {
    associatedtype ChainableBase
    var chain: Chainable<ChainableBase> { get set }
}

extension ChainableCompatible {
    public var chain: Chainable<Self> {
        get { Chainable(self) }
        set { }
    }
}

import Foundation

extension UIView: ChainableCompatible { }
