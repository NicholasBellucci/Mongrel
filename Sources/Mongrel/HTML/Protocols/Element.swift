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
                    return key
                } else {
                    return "\(key)=\"\(value)\""
                }
            }
            .joined(separator: " ")

        let stylesString = "style=\"" + styles
            .unique(by: \.name)
            .sorted()
            .map {
                String(describing: $0)
            }
            .joined(separator: "; ") + "\""

        if styles.isEmpty {
            return " " + attributesString
        } else if attributes.isEmpty {
            return " " + stylesString
        } else {
            return " \(stylesString) \(attributesString)"
        }
    }
}
