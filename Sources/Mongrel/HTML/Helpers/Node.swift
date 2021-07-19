//
//  Node.swift
//  
//
//  Created by Nicholas Bellucci on 7/17/21.
//

public struct Node {
    var tag: String
    var isEmpty: Bool
    var attributes: [String: String?] = [:]

    var innerHTML: String = ""

    init(tag: String, isEmpty: Bool = false) {
        self.tag = tag
        self.isEmpty = isEmpty
    }

    public func callAsFunction() -> Node {
        return self
    }

    public func callAsFunction(@HTMLBuilder _ content: () -> HTML) -> Node {
        var copy = self
        copy.innerHTML = content().render()
        return copy
    }
}

extension Node: HTML {
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

    private var attributesString: String {
        attributes
            .map { attribute in
                if let value = attribute.value {
                    return "\(attribute.key)=\"\(value)\""
                } else {
                    return "\(attribute.key)"
                }
            }
            .joined(separator: " ")
    }
}
