/// The ``List`` element is used create a list of a desitred type.
///
/// Types include ``datalist``, ``dl``, and ``ul``.
/// To create an ordered list use the ``OrderedList`` element.
///
/// For more information about these list types, visit:
/// https://www.w3schools.com/tags/tag_datalist.asp
/// https://www.w3schools.com/tags/tag_dl.asp
/// https://www.w3schools.com/tags/tag_ul.asp
public struct List: Attributable, EventListener {
    public var tag: String
    public var attributes: [String: String] = [:]
    public var styles: [String: String] = [:]

    private var innerHTML: String

    /// Creates a list element of a given type.
    ///
    /// - Parameters:
    ///   - type: The type of list to create.
    ///   - content: An ``HTMLBuilder`` that creates the content of this stack.
    public init(_ type: GenericListType, @HTMLBuilder _ content: () -> HTMLConvertible) {
        self.tag = type.rawValue
        innerHTML = content().stringValue
    }
}

extension List: HTMLConvertible {
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
