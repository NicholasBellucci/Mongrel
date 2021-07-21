/// The ``Column`` element specifies column properties for
/// each column within a ``ColumnGroup`` element.
///
/// This element is useful for applying styles to entire columns,
/// instead of repeating the styles for each cell, for each row.
///
/// For more information about the ``<col>`` tag,
/// visit https://www.w3schools.com/tags/tag_col.asp
public struct Column: Attributable, EventListener {
    public var tag: String = "col"
    public var attributes: [String: String] = [:]
    public var styles: [String: String] = [:]

    /// Creates a column element with an optional span.
    ///
    /// - Parameters:
    ///   - span: The number of columns the element spans.
    ///   - content: An ``HTMLBuilder`` that creates the elements
    ///   that make up this element.
    public init(span: Int? = nil) {
        if let span = span {
            attributes["span"] = "\(span)"
        }
    }
}

extension Column: HTMLConvertible {
    public var description: String {
        html
    }

    public var debugDescription: String {
        html
    }

    private var html: String {
        "<\(tag)\(attributesString)>"
    }
}
