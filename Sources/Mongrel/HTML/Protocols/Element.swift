public protocol Element: HTMLConvertible {
    var attributes: [String: String] { get set }
    var styles: [String: String] { get set }
}

extension Element {
    var attributesString: String {
        guard !styles.isEmpty || !attributes.isEmpty else { return "" }

        let stylesString = "style=\"\(allStyles)\""

        if styles.isEmpty {
            return " " + allAttributes
        } else if attributes.isEmpty {
            return " " + stylesString
        } else {
            return " \(stylesString) \(allAttributes)"
        }
    }
}

private extension Element {
    var allAttributes: String {
        attributes
            .keys
            .sorted()
            .map { key in
                guard let value = attributes[key] else { return "" }

                if value == "" {
                    return key
                } else {
                    return "\(key)=\"\(value)\""
                }
            }
            .joined(separator: " ")
    }

    var allStyles: String {
         styles
            .keys
            .sorted()
            .map { key in
                guard let value = styles[key] else { return "" }

                return "\(key): \(value)"
            }
            .joined(separator: "; ")
    }
}
