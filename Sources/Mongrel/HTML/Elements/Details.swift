//
//  Details.swift
//  
//
//  Created by Nicholas Bellucci on 7/19/21.
//

public struct Details: Attributable,  EventListener {
    public var attributes: [String: String] = [:]

    var innerHTML: String

    public init(@HTMLBuilder _ content: () -> HTMLRepresentable) {
        innerHTML = content().render()
    }
}

extension Details: HTMLRepresentable {
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

public extension Details {
    func open(if value: Bool = true) -> Details {
        var copy = self

        if value {
            copy.attributes["open"] = ""
        }

        return copy
    }
}
