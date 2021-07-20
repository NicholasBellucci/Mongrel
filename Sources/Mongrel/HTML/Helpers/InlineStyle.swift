public struct InlineStyle {
    var key: String
    var value: Any

    public init(_ key: String, _ value: Any) {
        self.key = key
        self.value = value
    }
}

extension InlineStyle: CustomStringConvertible, CustomDebugStringConvertible {
    public var description: String {
        "\(key): \(value)"
    }

    public var debugDescription: String {
        "\(key): \(value)"
    }
}

extension InlineStyle: Comparable {
    public static func < (lhs: InlineStyle, rhs: InlineStyle) -> Bool {
        lhs.key < rhs.key
    }

    public static func == (lhs: InlineStyle, rhs: InlineStyle) -> Bool {
        lhs.key == rhs.key
    }
}
