public protocol Attributable: Element {
    var tag: String { get }
}

public extension Attributable {
    func accessKey(_ key: String) -> Attributable {
        var copy = self
        copy.attributes["accesskey"] = key
        return copy
    }

    func `class`(_ class: String) -> Attributable {
        var copy = self
        copy.attributes["class"] = `class`
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

    func language(_ code: LanguageCode, country: CountryCode? = nil) -> Attributable {
        var copy = self

        if let country = country {
            copy.attributes["lang"] = "\(code.rawValue)-\(country.rawValue)"
        } else {
            copy.attributes["lang"] = "\(code.rawValue)"
        }

        return copy
    }

    func spellcheck(_ value: Bool) -> Attributable {
        var copy = self
        copy.attributes["spellcheck"] = "\(value)"
        return copy
    }

    func styles(_ styles: InlineStyle...) -> Attributable {
        var copy = self

        styles
            .sorted()
            .forEach {
                copy.styles[$0.key] = "\($0.value)"
            }

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
