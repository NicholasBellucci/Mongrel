//
//  Dialog.swift
//
//
//  Created by Nicholas Bellucci on 7/19/21.
//

public struct Dialog: Attributable, EventListener {
    public var tag: String = "dialog"
    public var attributes: [String: String] = [:]
    public var styles: [String: String] = [:]

    var innerHTML: String

    public init(@HTMLBuilder _ content: () -> HTMLConvertible) {
        innerHTML = content().stringValue
    }
}

extension Dialog: HTMLConvertible {
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

public extension Dialog {
    func open(if value: Bool = true) -> Dialog {
        var copy = self

        if value {
            copy.attributes["open"] = ""
        }

        return copy
    }
}
