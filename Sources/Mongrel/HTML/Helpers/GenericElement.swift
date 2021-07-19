//
//  GenericElement.swift
//  
//
//  Created by Nicholas Bellucci on 7/17/21.
//

public struct GenericElement: HTMLElement, Attributable {
    public var attributes: [String: String] = [:]

    var tag: String
    var isEmpty: Bool
    var innerHTML: String = ""

    init(tag: String, isEmpty: Bool = false) {
        self.tag = tag
        self.isEmpty = isEmpty
    }

    public func callAsFunction() -> GenericElement {
        return self
    }

    public func callAsFunction(@HTMLBuilder _ content: () -> HTML) -> GenericElement {
        var copy = self
        copy.innerHTML = content().render()
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
            return isEmpty ?
                "<\(tag) />":
                "<\(tag)>\(innerHTML)</\(tag)>"
        } else {
            return isEmpty ?
                "<\(tag) \(attributesString)>" :
                "<\(tag) \(attributesString)>\(innerHTML)</\(tag)>"
        }
    }
}
