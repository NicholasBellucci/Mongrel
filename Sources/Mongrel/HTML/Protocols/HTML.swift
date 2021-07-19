public protocol HTML: CustomStringConvertible, CustomDebugStringConvertible {
    var stringValue: String { get }
}

public extension HTML {
    var stringValue: String {
        String(describing: self)
    }
}

extension Array: HTML where Element == HTML {
    public var stringValue: String {
        self
            .enumerated()
            .map { index, element in
                if let text = element as? Text {
                    return self.element(before: index) is Text ?
                        " \(text)" :
                        String(describing: text)
                }

                return String(describing: element)
            }
            .joined()
    }
}
