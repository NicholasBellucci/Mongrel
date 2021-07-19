//
//  Link.swift
//  
//
//  Created by Nicholas Bellucci on 7/18/21.
//

public struct Link: Element, Attributable {
    public var attributes: [String: String] = [:]

    public init(href: String, rel: String) {
        attributes["href"] = href
        attributes["rel"] = rel
    }
}

extension Link: HTML {
    public var description: String {
        html
    }

    public var debugDescription: String {
        html
    }

    private var html: String {
        "<link \(attributesString)>"
    }
}
