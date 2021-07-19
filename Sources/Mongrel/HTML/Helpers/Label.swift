//
//  Label.swift
//  
//
//  Created by Nicholas Bellucci on 7/18/21.
//

public struct Label: HTMLElement {
    public var attributes: [String: String?] = [:]

    var innerHTML: String

    public init(for: String, @HTMLBuilder _ content: () -> HTML) {
        attributes["for"] = `for`
        innerHTML = content().render()
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
        "<label \(attributesString)>\(innerHTML)</label>"
    }
}
