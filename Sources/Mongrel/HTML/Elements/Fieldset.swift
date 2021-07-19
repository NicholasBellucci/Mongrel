//
//  Fieldset.swift
//  
//
//  Created by Nicholas Bellucci on 7/19/21.
//

public struct Fieldset: Attributable, EventListener {
    public var tag: String = "fieldset"
    public var attributes: [String: String] = [:]
    public var styles: [InlineStyle] = []

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
        "<\(tag)\(attributesString)>\(innerHTML)</\(tag)>"
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
