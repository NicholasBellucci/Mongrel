//
//  GenericElement.swift
//  
//
//  Created by Nicholas Bellucci on 7/17/21.
//

public struct GenericElement: Element, Attributable {
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
            return "<\(tag)>\(innerHTML)</\(tag)>"
        } else {
            return "<\(tag) \(attributesString)>\(innerHTML)</\(tag)>"
        }
    }
}

public extension GenericElement {
    func attributes(_ attributes: Attribute...) -> GenericElement {
        var copy = self

        attributes
            .reversed()
            .forEach {
                if let value: String = $0.associatedValue() {
                    copy.attributes[$0.rawValue] = value
                } else {
                    copy.attributes[$0.rawValue] = ""
                }
            }

        return copy
    }

    func addCustomAttribute(_ attribute: String, value: String) -> GenericElement {
        var copy = self
        copy.attributes[attribute] = value
        return copy
    }
}
