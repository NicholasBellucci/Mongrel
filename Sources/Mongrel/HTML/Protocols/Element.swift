public protocol Element: HTML {
    var attributes: [String: String] { get set }
}

extension Element {
    var attributesString: String {
        attributes
            .keys
            .sorted()
            .map { key in
                guard let value = attributes[key] else { return "" }

                if value == "" {
                    return "\(key)"
                } else {
                    return "\(key)=\"\(value)\""
                }
            }
            .joined(separator: " ")
    }
}
