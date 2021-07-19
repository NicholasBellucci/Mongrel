//
//  VStack.swift
//  
//
//  Created by Nicholas Bellucci on 7/19/21.
//

import Foundation

public struct VStack: Attributable, EventListener {
    public var tag: String = "div"
    public var attributes: [String: String] = [:]
    public var styles: [InlineStyle] = []

    var innerHTML: String
    
    public init(alignment: HorizontalAlignment = .leading, spacing: Int = 0, @HTMLBuilder _ content: ()-> HTML) {
        styles.append(InlineStyle(name: "align-items", value: alignment.rawValue))
        styles.append(InlineStyle(name: "justify-content", value: Justification.center))
        styles.append(InlineStyle(name: "display", value: DisplayType.flex.rawValue))
        styles.append(InlineStyle(name: "flex-direction", value: FlexDirection.column.rawValue))

        innerHTML = content().stringValue
    }
}

extension VStack: HTML {
    public var description: String {
        html
    }

    public var debugDescription: String {
        html
    }

    private var html: String {
        "<\(tag)\(attributesString)>\(innerHTML)</\(tag)>"
    }
}

public extension VStack {
    func frame(width: CGFloat? = nil, height: CGFloat? = nil, justification: Justification = .center) -> VStack {
        var copy = self

        if let width = width {
            copy.styles.append(InlineStyle(name: "width", value: "\(width)px"))
        }

        if let height = height {
            copy.styles.append(InlineStyle(name: "height", value: "\(height)px"))
        }

        copy.styles.append(InlineStyle(name: "justify-content", value: justification.rawValue))

        return copy
    }
}

public enum FlexDirection: String {
    case row
    case column
}

public enum DisplayType: String {
    case inline, contents
    case grid, inlineGrid = "inline-grid"
    case block, inlineBlock = "inline-block"
    case flex, inlineFlex = "inline-flex"
    case table, inlineTable = "inline-table"
    case none, hidden, inherit
}

public enum FlexWrap: String {
    case nowrap
    case wrap
    case reverse = "wrap-reverse"
}

public enum HorizontalAlignment: String {
    case center

    case leading = "flex-start"
    case trailing = "flex-end"
}

public enum Justification: String {
    case top = "flex-start"
    case bottom = "flex-end"
    case center
    case spaceBetween = "space-between"
    case spaceAround = "space-around"
    case spaceEvenly = "space-evenly"
}
