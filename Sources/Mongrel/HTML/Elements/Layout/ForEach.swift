/// The ``ForEach`` element loops over a collection of data
/// and provides the resulting ``HTMLConvertible``.
public struct ForEach {
    private var objects: [HTMLConvertible] = []

    /// Creates an instance that computes elements on demand.
    ///
    /// - Parameters:
    ///   - array: The array of items to loop over.
    ///   - content: An ``HTMLBuilder`` that creates views dynamically.
    public init<T>(_ array: [T], content: @escaping (T) -> HTMLConvertible) {
        array.forEach { objects.append(content($0)) }
    }
}

extension ForEach: HTMLConvertible {
    public var description: String {
        html
    }

    public var debugDescription: String {
        html
    }

    private var html: String {
        objects
            .enumerated()
            .map { index, element in
                if let text = element as? Text {
                    return objects.element(before: index) is Text ?
                        " \(text)" :
                        String(describing: text)
                }

                return String(describing: element)
            }
            .joined()
    }
}
