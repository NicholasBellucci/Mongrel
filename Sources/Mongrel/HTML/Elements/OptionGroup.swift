//
//  OptionGroup.swift
//
//
//  Created by Nicholas Bellucci on 7/19/21.
//

public struct OptionGroup: Element, Attributable,  EventListener {
    public var attributes: [String: String] = [:]

    var innerHTML: String

    public init(@HTMLBuilder _ content: () -> HTML) {
        innerHTML = content().render()
    }
}

extension OptionGroup: HTML {
    public var description: String {
        html
    }

    public var debugDescription: String {
        html
    }

    private var html: String {
        if attributes.isEmpty {
            return "<optgroup>\(innerHTML)</optgroup>"
        } else {
            return "<optgroup \(attributesString)>\(innerHTML)</optgroup>"
        }
    }
}

public extension OptionGroup {
    func disabled(if value: Bool = true) -> OptionGroup {
        var copy = self

        if value {
            copy.attributes["disabled"] = ""
        }

        return copy
    }

    func text(_ text: String) -> OptionGroup {
        var copy = self
        copy.attributes["text"] = text
        return copy
    }
}

