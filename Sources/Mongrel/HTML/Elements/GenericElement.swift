//
//  GenericElement.swift
//  
//
//  Created by Nicholas Bellucci on 7/17/21.
//

public struct GenericElement: Element, Attributable,  EventListener {
    public var attributes: [String: String] = [:]

    var tag: String
    var innerHTML: String = ""

    init(tag: String) {
        self.tag = tag
    }

    public func callAsFunction() -> GenericElement {
        return self
    }

    public func callAsFunction(@HTMLBuilder _ content: () -> HTML) -> GenericElement {
        var copy = self
        copy.innerHTML = content().stringValue
        return copy
    }
}

extension GenericElement: HTML {
    public var description: String {
        html
    }

    public var debugDescription: String {
        html
    }

    private var html: String {
        if attributes.isEmpty {
            return "<\(tag)>\(innerHTML)</\(tag)>"
        } else {
            return "<\(tag) \(attributesString)>\(innerHTML)</\(tag)>"
        }
    }
}
