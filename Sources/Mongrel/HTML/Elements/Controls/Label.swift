/// The ``Label`` element defines a label for several elements.
///
/// This element becomes clickable along with the related element.
/// This can be beneficial for screen readers and uders who have
/// trouble selecting very small regions of the screen.
///
/// For more information about the ``<label>`` tag,
/// visit https://www.w3schools.com/tags/tag_label.asp
public struct Label: Attributable, EventListener {
    public var tag: String = "label"
    public var attributes: [String: String] = [:]
    public var styles: [String: String] = [:]

    private var innerHTML: String

    /// Creates a fieldset element.
    ///
    /// - Parameters:
    ///   - id: The id for the related element.
    ///   - content: The ``HTMLConvertible`` elements that will make up
    ///   the HTML inside of the `<label></label>` tags.
    public init(for id: String, @HTMLBuilder _ content: () -> HTMLConvertible) {
        attributes["for"] = id
        innerHTML = content().stringValue
    }
}

/// These extensions are modifiers for an ``Label`` element
/// and will return an ``Label`` element for continued use/updates.
public extension Label {
    /// Sets the label's attribute: `form`.
    ///
    /// - Parameters:
    ///   - id: The id of the form in which the label belongs.
    func formId(_ id: String) -> Label {
        var copy = self
        copy.attributes["form"] = id
        return copy
    }
}

extension Label: HTMLConvertible {
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
