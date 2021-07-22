public typealias MarginSet = Set<Margin>

public enum Margin: String, EdgeOption {
    case top = "margin-top"
    case leading = "margin-left"
    case bottom = "margin-bottom"
    case trailing = "margin-right"

    static func set<T: Element>(for element: inout T, _ edges: MarginSet, length: Unit? = nil) {
        edges.forEach {
            if let length = length, let value = length.value {
                element.styles[$0.rawValue] = "\(value)\(length.label)"
            }
        }
    }
}

extension Set where Element == Margin {
    static var horizontal: Set<Margin> {
        return [.leading, .trailing]
    }

    static var vertical: Set<Margin> {
        return [.top, .bottom]
    }

    static var all: Set<Margin> {
        return Set(Element.allCases)
    }
}
