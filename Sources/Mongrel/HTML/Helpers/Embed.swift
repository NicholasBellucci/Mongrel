//
//  Embed.swift
//  
//
//  Created by Nicholas Bellucci on 7/18/21.
//

public struct Embed: HTMLElement {
    public var attributes: [String: String] = [:]

    public init(src: String, type: String, height: Double, width: Double) {
        attributes["src"] = src
        attributes["type"] = type
        attributes["height"] = "\(height)"
        attributes["width"] = "\(width)"
    }
}

extension Embed: HTML {
    public var description: String {
        html
    }

    public var debugDescription: String {
        html
    }

    private var html: String {
        "<embed \(attributesString)>"
    }
}
