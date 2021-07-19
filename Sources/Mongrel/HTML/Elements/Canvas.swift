//
//  Canvas.swift
//
//
//  Created by Nicholas Bellucci on 7/19/21.
//

public struct Canvas: Attributable, EventListener {
    public var tag: String = "canvas"
    public var attributes: [String: String] = [:]
    public var styles: [InlineStyle] = []

    var innerHTML: String

    public init(height: Int = 150, width: Int = 150, @HTMLBuilder _ content: () -> HTML) {
        attributes["height"] = "\(height)"
        attributes["width"] = "\(width)"
        innerHTML = content().stringValue
    }
}

extension Canvas: HTML {
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
