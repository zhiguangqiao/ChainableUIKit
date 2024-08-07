//
//  UIView+declare.swift
//  GoldenCoach
//
//  Created by goodluck on 2023/7/22.
//
import Foundation
import UIKit

@resultBuilder
public struct ViewsBuilder {
    public typealias Component = [UIView]
    public typealias Expression = UIView
    public static func buildExpression(_ element: Expression) -> Component {
        return [element]
    }
    public static func buildOptional(_ component: Component?) -> Component {
        guard let component = component else { return [] }
        return component
    }
    public static func buildEither(first component: Component) -> Component {
        return component
    }
    public static func buildEither(second component: Component) -> Component {
        return component
    }
    public static func buildArray(_ components: [Component]) -> Component {
        return Array(components.joined())
    }
    public static func buildBlock(_ components: Component...) -> Component {
        return Array(components.joined())
    }
}
