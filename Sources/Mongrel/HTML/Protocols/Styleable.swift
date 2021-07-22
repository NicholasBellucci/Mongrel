public protocol Styleable: EventListener { }

/// These extensions are modifiers for a ``Styleable`` element
/// and will return a optional ``T`` element for continued use/updates.
extension Styleable {
    func setMargins<T: Styleable>(_ edges: MarginSet, length: Unit? = nil) -> T? {
        var copy = self

        edges.forEach {
            if let length = length, let value = length.value {
                copy.styles[$0.rawValue] = "\(value)\(length.label)"
            }
        }

        return copy as? T
    }

    func setPadding<T: Styleable>(_ edges: PaddingSet, length: Unit? = nil) -> T? {
        var copy = self

        edges.forEach {
            if let length = length, let value = length.value {
                copy.styles[$0.rawValue] = "\(value)\(length.label)"
            }
        }

        return copy as? T
    }
    
    func setStyles<T: Styleable>(styles: [CSSProperty]) -> T? {
        var copy = self

        styles
            .sorted()
            .forEach {
                switch $0 {
                case let .custom(key, value):
                    copy.styles[key] = "\(value)"
                default:
                    guard let value: String = $0.associatedValue() else { return }
                    copy.styles[$0.label] = "\(value)"
                }
            }

        return copy as? T
    }
}
