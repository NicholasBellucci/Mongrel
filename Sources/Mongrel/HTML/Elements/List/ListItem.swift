/// The ``ListItem`` element defines a list item.
///
/// This element is used inside the ``OrderedList`` element
/// and  the ``List(.unordered)`` element.
///
/// For more information about the ``<li>`` tag,
/// visit https://www.w3schools.com/tags/tag_li.asp
public struct ListItem: Attributable, EventListener {
    public var tag: String = "li"
    public var attributes: [String: String] = [:]
    public var styles: [String: String] = [:]

    private var innerHTML: String

    /// Creates a list item with an optional value and inner content.
    ///
    /// - Parameters:
    ///   - value: The start value of a list item. Only valid in ``OrderedList``.
    ///   - content: An ``HTMLBuilder`` that creates the elements
    ///   that make up this element.
    public init(value: String? = nil, @HTMLBuilder _ content: () -> HTMLConvertible) {
        attributes["value"] = value
        innerHTML = content().stringValue
    }
}

extension ListItem: HTMLConvertible {
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
