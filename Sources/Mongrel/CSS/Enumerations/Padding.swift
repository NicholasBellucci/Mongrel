public typealias PaddingSet = Set<Padding>

public enum Padding: String, EdgeOption {
    case top = "padding-top"
    case leading = "padding-left"
    case bottom = "padding-bottom"
    case trailing = "padding-right"
}

public extension Set where Element == Padding {
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
