//
//  Fieldset.swift
//  
//
//  Created by Nicholas Bellucci on 7/19/21.
//

public struct Fieldset: Element, Attributable,  EventListener {
    public var attributes: [String: String] = [:]

    var innerHTML: String

    public init(@HTMLBuilder _ content: () -> HTML) {
        innerHTML = content().stringValue
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

public extension Fieldset {
    func disabled(if value: Bool = true) -> Fieldset {
        var copy = self

        if value {
            copy.attributes["disabled"] = ""
        }

        return copy
    }

    func formId(_ id: String) -> Fieldset {
        var copy = self
        copy.attributes["form"] = id
        return copy
    }

    func name(_ name: String) -> Fieldset {
        var copy = self
        copy.attributes["name"] = name
        return copy
    }
}
