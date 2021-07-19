//
//  Option.swift
//  
//
//  Created by Nicholas Bellucci on 7/19/21.
//

public struct Option: Element, Attributable {
    public var attributes: [String: String] = [:]

    var innerHTML: String

    public init(@HTMLBuilder _ content: () -> HTML) {
        innerHTML = content().render()
    }
}

extension Option: HTML {
    public var description: String {
        html
    }

    public var debugDescription: String {
        html
    }

    private var html: String {
        if attributes.isEmpty {
            return "<option>\(innerHTML)</option>"
        } else {
            return "<option \(attributesString)>\(innerHTML)</option>"
        }
    }
}
