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
    public var styles: [String: String] = [:]

    private var innerHTML: String
    
    public init(alignment: HorizontalAlignment = .center, spacing: Int = 0, @HTMLBuilder _ content: ()-> HTMLConvertible) {
        styles["align-items"] = alignment.rawValue
        styles["justify-content"] = Justification.center.rawValue
        styles["display"] = DisplayType.flex.rawValue
        styles["flex-direction"] = FlexDirection.column.rawValue

        innerHTML = content().stringValue
    }
}

extension VStack: HTMLConvertible {
    public var description: String {
        html
    }

    public var debugDescription: String {
        html
    }

    private var html: String {
        "<\(tag) style=\"display: flex\"><\(tag)\(attributesString)>\(innerHTML)</\(tag)></\(tag)>"
    }
}

public extension VStack {
    func frame(width: CGFloat? = nil, height: CGFloat? = nil, justification: Justification = .center) -> VStack {
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
