//
//  HStack.swift
//  
//
//  Created by Nicholas Bellucci on 7/19/21.
//

import Foundation

public struct HStack: Attributable, EventListener {
    public var tag: String = "div"
    public var attributes: [String: String] = [:]
    public var styles: [String: String] = [:]

    var innerHTML: String

    public init(alignment: VerticalAlignment = .center, spacing: Int = 0, @HTMLBuilder _ content: ()-> HTML) {
        styles["align-items"] = alignment.rawValue
        styles["justify-content"] = Justification.center.rawValue
        styles["display"] = DisplayType.flex.rawValue
        styles["flex-direction"] = FlexDirection.row.rawValue

        innerHTML = content().stringValue
    }
}

extension HStack: HTML {
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

public extension HStack {
    func frame(width: CGFloat? = nil, height: CGFloat? = nil, justification: Justification = .center) -> HStack {
        var copy = self

        if let width = width {
            copy.styles["width"] = "\(width)px"
        }

        if let height = height {
            copy.styles["height"] = "\(height)px"
        }

        copy.styles["justify-content"] = justification.rawValue
        
        return copy
    }
}