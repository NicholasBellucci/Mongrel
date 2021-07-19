//
//  Details.swift
//  
//
//  Created by Nicholas Bellucci on 7/19/21.
//

public struct Details: Attributable {
    public var attributes: [String: String] = [:]

    var innerHTML: String

    public init(@HTMLBuilder _ content: () -> HTML) {
        innerHTML = content().render()
    }
}

extension Details: HTML {
    public var description: String {
        html
    }

    public var debugDescription: String {
        html
    }

    private var html: String {
        if attributes.isEmpty {
            return "<details>\(innerHTML)</details>"
        } else {
            return "<details \(attributesString)>\(innerHTML)</details>"
        }
    }
}
