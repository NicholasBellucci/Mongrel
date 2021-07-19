//
//  Fieldset.swift
//  
//
//  Created by Nicholas Bellucci on 7/19/21.
//

public struct Fieldset: Element, Attributable {
    public var attributes: [String: String] = [:]

    var innerHTML: String

    public init(@HTMLBuilder _ content: () -> HTML) {
        innerHTML = content().render()
    }
}

extension Fieldset: HTML {
    public var description: String {
        html
    }

    public var debugDescription: String {
        html
    }

    private var html: String {
        if attributes.isEmpty {
            return "<fieldset>\(innerHTML)</fieldset>"
        } else {
            return "<fieldset \(attributesString)>\(innerHTML)</fieldset>"
        }
    }
}
