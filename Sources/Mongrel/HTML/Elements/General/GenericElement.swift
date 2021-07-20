//
//  GenericElement.swift
//  
//
//  Created by Nicholas Bellucci on 7/17/21.
//

public struct GenericElement: Attributable, EventListener {
    public var tag: String
    public var attributes: [String: String] = [:]
    public var styles: [String: String] = [:]

    var innerHTML: String = ""

    init(tag: String) {
        self.tag = tag
    }

    public func callAsFunction() -> GenericElement {
        return self
    }

    public func callAsFunction(@HTMLBuilder _ content: () -> HTMLConvertible) -> GenericElement {
        var copy = self
        copy.innerHTML = content().stringValue
        return copy
    }
}

extension GenericElement: HTMLConvertible {
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
