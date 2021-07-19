//
//  Data.swift
//  
//
//  Created by Nicholas Bellucci on 7/19/21.
//

public struct Data: Attributable,  EventListener {
    public var attributes: [String: String] = [:]

    var innerHTML: String

    public init(value: Any, @HTMLBuilder _ content: () -> HTML) {
        attributes["value"] = "\(value)"
        innerHTML = content().render()
    }
}

extension Data: HTML {
    public var description: String {
        html
    }

    public var debugDescription: String {
        html
    }

    private var html: String {
        "<data \(attributesString)>\(innerHTML)</data>"
    }
}
