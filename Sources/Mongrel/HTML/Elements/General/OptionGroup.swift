//
//  OptionGroup.swift
//
//
//  Created by Nicholas Bellucci on 7/19/21.
//

public struct OptionGroup: Attributable, EventListener {
    public var tag: String = "optgroup"
    public var attributes: [String: String] = [:]
    public var styles: [String: String] = [:]

    var innerHTML: String

    public init(@HTMLBuilder _ content: () -> HTMLConvertible) {
        innerHTML = content().stringValue
    }
}

extension OptionGroup: HTMLConvertible {
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

