//
//  Style.swift
//  
//
//  Created by Nicholas Bellucci on 7/19/21.
//

public struct Style: Element, Attributable,  EventListener {
    public var attributes: [String : String] = [:]

    var innerCSS: String

    public init(@StyleBuilder _ content: () -> [InternalStyle]) {
        attributes["type"] = "text/css"
        innerCSS = content()
            .map { String(describing: $0) }
            .joined(separator: " ")
    }
}

extension Style: HTML {
    public var description: String {
        html
    }

    public var debugDescription: String {
        html
    }

    private var html: String {
        "<style \(attributesString)>\(innerCSS)</style>"
    }
}
