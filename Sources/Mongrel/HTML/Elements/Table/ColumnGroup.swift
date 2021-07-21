/// The ``ColumnGroup`` element specifies a group of one or more
/// columns in a table for formatting.
///
/// This element is useful for applying styles to entire columns,
/// instead of repeating the styles for each cell, for each row.
///
/// For more information about the ``<colgroup>`` tag,
/// visit https://www.w3schools.com/tags/tag_colgroup.asp
public struct ColumnGroup: Attributable, EventListener {
    public var tag: String = "colgroup"
    public var attributes: [String: String] = [:]
    public var styles: [String: String] = [:]

    private var innerHTML: String

    /// Creates a column group element with an optional span.
    ///
    /// - Parameters:
    ///   - span: The number of columns the element spans.
    ///   - content: An ``HTMLBuilder`` that creates the elements
    ///   that make up this element.
    public init(span: Int? = nil, @HTMLBuilder _ content: () -> HTMLConvertible) {
        if let span = span {
            attributes["span"] = "\(span)"
        }

        innerHTML = content().stringValue
    }
}

extension ColumnGroup: HTMLConvertible {
    public var description: String {
        html
    }

    public var debugDescription: String {
        html
    }

    private var html: String {
        "<\(tag)\(attributesString)>\(innerHTML)</\(tag)>"
    }
}
