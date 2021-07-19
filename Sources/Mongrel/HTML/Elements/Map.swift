//
//  Map.swift
//  
//
//  Created by Nicholas Bellucci on 7/19/21.
//

public struct Map: Element, Attributable,  EventListener {
    public var attributes: [String: String] = [:]

    var innerHTML: String

    public init(_ name: String, @HTMLBuilder _ content: () -> HTMLRepresentable) {
        attributes["name"] = name
        innerHTML = content().render()
    }
}

extension Map: HTMLRepresentable {
    public var description: String {
        html
    }

    public var debugDescription: String {
        html
    }

    private var html: String {
        "<map \(attributesString)>\(innerHTML)</map>"
    }
}
