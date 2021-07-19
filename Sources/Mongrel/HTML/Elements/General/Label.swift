//
//  Label.swift
//  
//
//  Created by Nicholas Bellucci on 7/18/21.
//

public struct Label: Attributable, EventListener {
    public var tag: String = "label"
    public var attributes: [String: String] = [:]
    public var styles: [String: String] = [:]

    var innerHTML: String

    public init(for: String, @HTMLBuilder _ content: () -> HTML) {
        attributes["for"] = `for`
        innerHTML = content().stringValue
    }
}

extension Label: HTML {
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
