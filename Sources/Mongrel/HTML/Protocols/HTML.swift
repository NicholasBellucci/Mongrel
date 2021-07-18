public protocol HTML: CustomStringConvertible, CustomDebugStringConvertible {
    func render() -> String
}

extension Node: HTML {
    public func render() -> String {
        String(describing: self)
    }

    public var description: String {
        html
    }

    public var debugDescription: String {
        html
    }
}

extension String: HTML {
    public func render() -> String {
        String(describing: self)
    }
}

extension Array: HTML where Element == HTML {
    public func render() -> String {
        return self
            .enumerated()
            .map { index, element in
                if let value = element as? String {
                    return self.element(before: index) is String ?
                        " \(value.escaped)" :
                        value.escaped
                }

                return String(describing: element)
            }
            .joined()
    }
}
