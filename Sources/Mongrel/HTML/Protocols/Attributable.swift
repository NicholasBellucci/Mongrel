public protocol Attributable: Element { }

public extension Attributable {
    func accessKey(_ key: String) -> Attributable {
        var copy = self
        copy.attributes["accesskey"] = key
        return copy
    }

    func classes(_ classes: String...) -> Attributable {
        var copy = self

        copy.attributes["class"] = classes
            .sorted()
            .map { $0 }.joined(separator: " ")
        
        return copy
    }

    func contentEditable(_ value: Bool) -> Attributable {
        var copy = self
        copy.attributes["contenteditable"] = "\(value)"
        return copy
    }

    func customAttribute(name: String, value: Any) -> Attributable {
        var copy = self
        copy.attributes[name] = "\(value)"
        return copy
    }

    func draggable(_ value: Bool) -> Attributable {
        var copy = self
        copy.attributes["draggable"] = "\(value)"
        return copy
    }

    func hidden(_ value: Bool) -> Attributable {
        var copy = self

        if value {
            copy.attributes["hidden"] = ""
        }

        return copy
    }

    func id(_ id: String) -> Attributable {
        var copy = self
        copy.attributes["id"] = id
        return copy
    }

    func language(_ language: String) -> Attributable {
        var copy = self
        copy.attributes["language"] = language
        return copy
    }

    func spellcheck(_ value: Bool) -> Attributable {
        var copy = self
        copy.attributes["spellcheck"] = "\(value)"
        return copy
    }

    func styles(_ styles: InlineStyle...) -> Attributable {
        var copy = self

        copy.attributes["style"] = styles
            .sorted()
            .map { String(describing: $0) }
            .joined(separator: "; ")

        return copy
    }

    func tabIndex(_ index: Int) -> Attributable {
        var copy = self
        copy.attributes["tabindex"] = "\(index)"
        return copy
    }

    func title(_ title: String) -> Attributable {
        var copy = self
        copy.attributes["title"] = title
        return copy
    }

    func translate(_ value: Bool) -> Attributable {
        var copy = self
        copy.attributes["translate"] = value ? "yes" : "no"
        return copy
    }
}
