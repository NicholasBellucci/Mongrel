//
//  Anchor.swift
//  
//
//  Created by Nicholas Bellucci on 7/19/21.
//

public struct Anchor: Attributable {
    public var attributes: [String: String] = [:]

    var innerHTML: String

    public init(@HTMLBuilder _ content: () -> HTML) {
        innerHTML = content().render()
    }
}

extension Anchor: HTML {
    public var description: String {
        html
    }

    public var debugDescription: String {
        html
    }

    private var html: String {
        if attributes.isEmpty {
            return "<a>\(innerHTML)</a>"
        } else {
            return "<a \(attributesString)>\(innerHTML)</a>"
        }
    }
}
