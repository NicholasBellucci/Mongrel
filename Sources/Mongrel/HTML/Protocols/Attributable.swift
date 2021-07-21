import Foundation

public protocol Attributable: EventListener {
    var tag: String { get }
}

public extension Attributable {
    func accessKey(_ key: String) -> Attributable {
        var copy = self
        copy.attributes["accesskey"] = key
        return copy
    }

    func allowsSpellcheck(_ value: Bool) -> Attributable {
        var copy = self
        copy.attributes["spellcheck"] = "\(value)"
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

    func margin(_ edges: Edge.Margin..., length: Unit? = nil) -> Element {
        var copy = self

        edges.forEach {
            if let length = length, let value: CGFloat = length.associatedValue() {
                copy.styles[$0.rawValue] = "\(value)\(length.label)"
            }
        }

        return copy
    }

    func padding(_ edges: Edge.Padding..., length: Unit? = nil) -> Element {
        var copy = self

        edges.forEach {
            if let length = length, let value: CGFloat = length.associatedValue() {
                copy.styles[$0.rawValue] = "\(value)\(length.label)"
            }
        }

        return copy
    }

    func styles(_ styles: CSSProperty...) -> Attributable {
        var copy = self

        styles
            .sorted()
            .forEach {
                switch $0 {
                case let .custom(key, value):
                    copy.styles[key] = "\(value)"
                default:
                    guard let value: String = $0.associatedValue() else { return }
                    copy.styles[$0.stringValue] = "\(value)"
                }
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

    func translated(_ value: Bool) -> Attributable {
        var copy = self
        copy.attributes["translate"] = value ? "yes" : "no"
        return copy
    }
}
