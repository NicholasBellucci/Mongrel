//
//  Parameter.swift
//  
//
//  Created by Nicholas Bellucci on 7/18/21.
//

public struct Parameter: Element, Attributable {
    public var attributes: [String: String] = [:]

    public init(name: String, value: String) {
        attributes["name"] = name
        attributes["value"] = value
    }
}

extension Parameter: HTML {
    public var description: String {
        html
    }

    public var debugDescription: String {
        html
    }

    private var html: String {
        "<param \(attributesString)>"
    }
}
