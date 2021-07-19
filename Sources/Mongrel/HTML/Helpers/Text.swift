//
//  Text.swift
//  
//
//  Created by Nicholas Bellucci on 7/18/21.
//

public struct Text: HTMLElement {
    var tags: [String] = []
    var attributesCollection: [String: [String: String]] = [:]

    public var attributes: [String: String?] = [:]

    var value: String

    public init(_ value: String) {
        self.value = value.escaped
    }
}

extension Text: HTML {
    public var description: String {
        html
    }

    public var debugDescription: String {
        html
    }

    private var html: String {
        var html: String = value
        var tags: [String] = tags

        if tags.isEmpty, !attributes.isEmpty {
            tags.append("span")
        }
        
        tags
            .reversed()
            .enumerated()
            .forEach { index, tag in
                if index == tags.count - 1, !attributes.isEmpty {
                    if attributesCollection[tag] == nil {
                        html = "<\(tag) \(attributesString)>\(html)</\(tag)>"
                    } else {
                        html = "<\(tag) \(attributesString) \(attributes(for: tag))>\(html)</\(tag)>"
                    }
                } else {
                    if attributesCollection[tag] == nil {
                        html = "<\(tag)>\(html)</\(tag)>"
                    } else {
                        html = "<\(tag) \(attributes(for: tag))>\(html)</\(tag)>"
                    }
                }
            }

        return html
    }

    private func attributes(for tag: String) -> String {
        guard let array = attributesCollection[tag] else { return "" }

        return array
            .map { attribute in "\(attribute.key)=\"\(attribute.value)\"" }
            .joined(separator: " ")
    }
}
