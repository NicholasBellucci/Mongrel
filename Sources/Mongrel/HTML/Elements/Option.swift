//
//  Option.swift
//  
//
//  Created by Nicholas Bellucci on 7/19/21.
//

public struct Option: Element, Attributable,  EventListener {
    public var attributes: [String: String] = [:]

    var innerHTML: String

    public init(@HTMLBuilder _ content: () -> HTMLRepresentable) {
        innerHTML = content().render()
    }
}

extension Option: HTMLRepresentable {
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
