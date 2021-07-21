/// A ``Details``specifies additional details that can be open and closed.
///
/// This element allows any sort of content.
///
/// For more information about the ``<details>`` tag,
/// visit https://www.w3schools.com/tags/tag_details.asp
public struct Details: Attributable, EventListener {
    public var tag: String = "details"
    public var attributes: [String: String] = [:]
    public var styles: [String: String] = [:]

    private var innerHTML: String

    /// Creates a details element with given content.
    ///
    /// - Parameters:
    ///   - content: An ``HTMLBuilder`` that creates the elements
    ///   that make up this element.
    public init(@HTMLBuilder _ content: () -> HTMLConvertible) {
        innerHTML = content().stringValue
    }
}

/// These extensions are modifiers for an ``Details`` element
/// and will return an ``Details`` element for continued use/updates.
public extension Details {
    /// Specifies that the details should be visible to the user
    ///
    /// - Parameters:
    ///   - value: A Boolean value that determines whether the ``open``
    ///   attribute should be added.
    func opened(_ value: Bool) -> Details {
        var copy = self

        if value {
            copy.attributes["open"] = ""
        }

        return copy
    }
}

extension Details: HTMLConvertible {
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
