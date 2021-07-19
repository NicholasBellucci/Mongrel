//
//  iFrame.swift
//  
//
//  Created by Nicholas Bellucci on 7/19/21.
//

public struct iFrame: Element, Attributable {
    public var attributes: [String: String] = [:]

    var innerHTML: String

    public init(title: String, @HTMLBuilder _ content: () -> HTML) {
        attributes["title"] = title
        innerHTML = content().render()
    }
}

extension iFrame: HTML {
    public var description: String {
        html
    }

    public var debugDescription: String {
        html
    }

    private var html: String {
        "<iframe \(attributesString)>\(innerHTML)</iframe>"
    }
}
