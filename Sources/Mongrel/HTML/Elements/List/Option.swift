//
//  Option.swift
//  
//
//  Created by Nicholas Bellucci on 7/19/21.
//

public struct Option: Attributable, EventListener {
    public var tag: String = "option"
    public var attributes: [String: String] = [:]
    public var styles: [String: String] = [:]

    private var innerHTML: String

    public init(@HTMLBuilder _ content: () -> HTMLConvertible) {
        innerHTML = content().stringValue
    }
}

public extension Option {
    func disabled(if value: Bool = true) -> Option {
        var copy = self

        if value {
            copy.attributes["disabled"] = ""
        }

        return copy
    }

    func label(_ label: String) -> Option {
        var copy = self
        copy.attributes["label"] = label
        return copy
    }

    func selected(if value: Bool = true) -> Option {
        var copy = self

        if value {
            copy.attributes["selected"] = ""
        }

        return copy
    }

    func value(_ value: String) -> Option {
        var copy = self
        copy.attributes["value"] = value
        return copy
    }
}

extension Option: HTMLConvertible {
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
