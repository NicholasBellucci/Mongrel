public protocol HTML: CustomStringConvertible, CustomDebugStringConvertible {
    func render() -> String
}

public extension HTML {
    func render() -> String {
        String(describing: self)
    }
}

extension Array: HTML where Element == HTML {
    public func render() -> String {
        return self
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
