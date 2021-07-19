//
//  Script.swift
//  
//
//  Created by Nicholas Bellucci on 7/19/21.
//

public struct Script: Element, Attributable {
    public var attributes: [String: String] = [:]

    var innerHTML: String

    public init(source: String) {
        attributes["src"] = source
        innerHTML = ""
    }

    public init(_ content: () -> String) {
        innerHTML = content()
    }
}

extension Script: HTML {
    public var description: String {
        html
    }

    public var debugDescription: String {
        html
    }

    private var html: String {
        if attributes.isEmpty {
            return "<script>\(innerHTML)</script>"
        } else {
            return "<script \(attributesString)>\(innerHTML)</script>"
        }
    }
}

