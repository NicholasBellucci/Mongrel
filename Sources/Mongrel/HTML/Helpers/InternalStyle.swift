public struct InternalStyle {
    var selector: String
    var styles: [CSSProperty]

    public init(selector: String, styles: CSSProperty...) {
        self.selector = selector
        self.styles = styles
    }
}

extension InternalStyle: CustomStringConvertible, CustomDebugStringConvertible {
    public var description: String {
        representation
    }

    public var debugDescription: String {
        representation
    }

    private var representation: String {
        let stylesString = styles
            .sorted()
            .map { String(describing: $0) }
            .joined(separator: "; ")

        return "\(selector) { \(stylesString); }"
    }
}
