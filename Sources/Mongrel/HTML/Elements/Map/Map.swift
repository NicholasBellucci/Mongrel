//
//  Map.swift
//  
//
//  Created by Nicholas Bellucci on 7/19/21.
//

public struct Map: Attributable, EventListener {
    public var tag: String = "map"
    public var attributes: [String: String] = [:]
    public var styles: [InlineStyle] = []

    var innerHTML: String

    public init(_ name: String, @HTMLBuilder _ content: () -> HTML) {
        attributes["name"] = name
        innerHTML = content().stringValue
    }
}

extension Map: HTML {
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
