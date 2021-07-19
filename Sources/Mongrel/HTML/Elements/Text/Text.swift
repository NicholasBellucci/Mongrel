//
//  Text.swift
//  
//
//  Created by Nicholas Bellucci on 7/18/21.
//

public struct Text: Attributable, EventListener {
    public var tag: String = ""
    public var attributes: [String: String] = [:]
    public var styles: [InlineStyle] = []

    var tags: [String] = []
    var attributesCollection: [String: [String: String]] = [:]

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

public extension Text {
    func abbreviated(title: String) -> Text {
        var copy = self
        copy.tags.append("abbr")
        copy.attributesCollection["abbr"] = ["title": title]
        return copy
    }

    func bold() -> Text {
        var copy = self
        copy.tags.append("b")
        return copy
    }

    func cited() -> Text {
        var copy = self
        copy.tags.append("cite")
        return copy
    }

    func direction(_ direction: Direction) -> Text {
        var copy = self
        copy.tags.append("bdo")
        copy.attributesCollection["bdo"] = ["dir": direction.rawValue]
        return copy
    }

    func emphasized() -> Text {
        var copy = self
        copy.tags.append("em")
        return copy
    }

    func heading(_ heading: Heading) -> Text {
        var copy = self
        copy.tags.append("\(heading.rawValue)")
        return copy
    }

    func important() -> Text {
        var copy = self
        copy.tags.append("strong")
        return copy
    }

    func inserted() -> Text {
        var copy = self
        copy.tags.append("ins")
        return copy
    }

    func italic() -> Text {
        var copy = self
        copy.tags.append("i")
        return copy
    }

    func marked() -> Text {
        var copy = self
        copy.tags.append("marked")
        return copy
    }

    func small() -> Text {
        var copy = self
        copy.tags.append("small")
        return copy
    }

    func strikethrough(_ active: Bool = true) -> Text {
        var copy = self

        if active {
            copy.tags.append("del")
        }

        return copy
    }

    func `subscript`() -> Text {
        var copy = self
        copy.tags.append("sub")
        return copy
    }

    func superscript() -> Text {
        var copy = self
        copy.tags.append("sup")
        return copy
    }

    func quoted() -> Text {
        var copy = self
        copy.tags.append("q")
        return copy
    }

    func underlined() -> Text {
        var copy = self
        copy.tags.append("u")
        return copy
    }
}
