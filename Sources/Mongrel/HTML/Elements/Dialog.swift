//
//  Dialog.swift
//
//
//  Created by Nicholas Bellucci on 7/19/21.
//

public struct Dialog: Attributable {
    public var attributes: [String: String] = [:]

    var innerHTML: String

    public init(@HTMLBuilder _ content: () -> HTML) {
        innerHTML = content().render()
    }
}

extension Dialog: HTML {
    public var description: String {
        html
    }

    public var debugDescription: String {
        html
    }

    private var html: String {
        if attributes.isEmpty {
            return "<dialog>\(innerHTML)</dialog>"
        } else {
            return "<dialog \(attributesString)>\(innerHTML)</dialog>"
        }
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
