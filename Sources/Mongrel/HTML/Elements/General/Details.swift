//
//  Details.swift
//  
//
//  Created by Nicholas Bellucci on 7/19/21.
//

public struct Details: Attributable, EventListener {
    public var tag: String = "details"
    public var attributes: [String: String] = [:]
    public var styles: [String: String] = [:]

    var innerHTML: String

    public init(@HTMLBuilder _ content: () -> HTMLConvertible) {
        innerHTML = content().stringValue
    }
}

extension Details: HTMLConvertible {
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

public extension Details {
    func open(if value: Bool = true) -> Details {
        var copy = self

        if value {
            copy.attributes["open"] = ""
        }

        return copy
    }
}
