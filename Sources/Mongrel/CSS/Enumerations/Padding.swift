public typealias PaddingSet = Set<Padding>

public enum Padding: String, EdgeOption {
    case top = "padding-top"
    case leading = "padding-left"
    case bottom = "padding-bottom"
    case trailing = "padding-right"

    static func set<T: Element>(for element: inout T, _ edges: PaddingSet, length: Unit? = nil) {
        edges.forEach {
            if let length = length, let value = length.value {
                element.styles[$0.rawValue] = "\(value)\(length.label)"
            }
        }
    }
}

extension Set where Element == Padding {
    static var horizontal: Set<Padding> {
        return [.leading, .trailing]
    }

    static var vertical: Set<Padding> {
        return [.top, .bottom]
    }

    static var all: Set<Padding> {
        return Set(Element.allCases)
    }
}
