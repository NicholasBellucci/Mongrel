//
//  Canvas.swift
//
//
//  Created by Nicholas Bellucci on 7/19/21.
//

public struct Canvas: Attributable,  EventListener {
    public var attributes: [String: String] = [:]

    var innerHTML: String

    public init(height: Int = 150, width: Int = 150, @HTMLBuilder _ content: () -> HTMLRepresentable) {
        attributes["height"] = "\(height)"
        attributes["width"] = "\(width)"
        innerHTML = content().render()
    }
}

extension Canvas: HTMLRepresentable {
    public var description: String {
        html
    }

    public var debugDescription: String {
        html
    }

    private var html: String {
        "<canvas \(attributesString)>\(innerHTML)</canvas>"
    }
}
