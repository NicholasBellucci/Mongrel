public typealias MarginSet = Set<Margin>

public enum Margin: String, EdgeOption {
    case top = "margin-top"
    case leading = "margin-left"
    case bottom = "margin-bottom"
    case trailing = "margin-right"
}

public extension Set where Element == Margin {
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
