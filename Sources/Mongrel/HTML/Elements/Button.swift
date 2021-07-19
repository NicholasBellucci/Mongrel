//
//  Button.swift
//  
//
//  Created by Nicholas Bellucci on 7/19/21.
//

public struct Button: Attributable {
    public var attributes: [String: String] = [:]

    var innerHTML: String

    public init(@HTMLBuilder _ content: () -> HTML) {
        attributes["type"] = "button"
        innerHTML = content().render()
    }
}

extension Button: HTML {
    public var description: String {
        html
    }

    public var debugDescription: String {
        html
    }

    private var html: String {
        return "<button \(attributesString)>\(innerHTML)</button>"
    }
}
