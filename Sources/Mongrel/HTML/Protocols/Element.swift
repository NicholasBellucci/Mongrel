public protocol Element: HTML {
    var attributes: [String: String] { get set }
    var styles: [InlineStyle] { get set }
}

extension Element {
    var attributesString: String {
        let attributesString = attributes
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

        let stylesString = attributes
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

        return " \(stylesString) \(attributesString)"
    }
}
